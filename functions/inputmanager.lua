poke_input_manager = {
  double_click_window = 0.3,
  last_clicked = {
    target = nil,
    time = 0,
  },
  subscribers = {
    ['left_click'] = {},
    ['right_click'] = {},
    ['double_click'] = {},
    ['right_stick'] = {}
  }
}

function poke_input_manager:add_listener(event, func)
  if type(event) ~= 'table' then event = { event } end
  for _, e in ipairs(event) do
    table.insert(self.subscribers[e], func)
  end
end

function poke_input_manager:fire_event(event, payload)
  for _, func in ipairs(self.subscribers[event]) do
    func(payload)
  end
end

function poke_input_manager:handle_double_click(target)
  local current_time = love.timer.getTime()
  if self.last_clicked.target == target
      and current_time - self.last_clicked.time <= self.double_click_window then
    self:double_click(target)
    self.last_clicked.target = nil
    self.last_clicked.time = 0
  else
    self.last_clicked.target = target
    self.last_clicked.time = current_time
  end
end

function poke_input_manager:double_click(target)
  self:fire_event('double_click', target)
end

function poke_input_manager:left_click(target)
  if target then
    self:fire_event('left_click', target)
    self:handle_double_click(target)
  end
end

function poke_input_manager:right_click(target)
  if target then
    self:fire_event('right_click', target)
  end
end

function poke_input_manager:right_stick(target)
  if target then
    self:fire_event('right_stick', target)
  end
end

local controller_is_locked = function()
  return (G.CONTROLLER.locked and (not G.SETTINGS.paused or G.screenwipe))
      or G.CONTROLLER.locks.frame
end

local L_cursor_press_ref = G.CONTROLLER.L_cursor_press
G.CONTROLLER.L_cursor_press = function(self, x, y)
  if not controller_is_locked() then
    local target = (self.HID.touch and self.cursor_hover.target) or self.hovering.target or self.focused.target
    poke_input_manager:left_click(target)
  end
  return L_cursor_press_ref(self, x, y)
end

local queue_R_cursor_press_ref = G.CONTROLLER.queue_R_cursor_press
G.CONTROLLER.queue_R_cursor_press = function(self, x, y)
  if not controller_is_locked() then
    local target = self.hovering.target or self.focused.target
    poke_input_manager:right_click(target)
  end
  return queue_R_cursor_press_ref(self, x, y)
end

local capture_focused_input_ref = G.CONTROLLER.capture_focused_input
G.CONTROLLER.capture_focused_input = function(self, button, input_type, dt)
  if input_type == 'press' and button == 'rightstick' and self.focused then
    local target = self.focused.target
    poke_input_manager:right_stick(target)
  end
  return capture_focused_input_ref(self, button, input_type, dt)
end
