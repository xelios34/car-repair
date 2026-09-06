-- Assetto Corsa / CSP 0.3.x
-- F12 = instant vehicle repair
--
-- NOTE: CSP documents physics.resetCarState(0) as the Repair action.
-- It is a FULL repair. CSP does not document a public Lua setter
-- for suspensionDamage alone, so this file does not pretend otherwise.

local wasDown = false

function script.update(dt)
  local down = ac.isKeyDown(ui.KeyIndex.F12)

  if down and not wasDown then
    if physics and physics.allowed and physics.allowed() then
      physics.resetCarState(0)
      ui.toast(ui.Icons.Confirm, 'Car repaired')
    end
  end

  wasDown = down
end
