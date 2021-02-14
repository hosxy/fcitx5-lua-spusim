local fcitx = require("fcitx")

-- 获取环境变量
local FCITX_LUA_SPUSIM = os.getenv("FCITX_LUA_SPUSIM")

-- 将环境变量的值切割为 "程序名:输入法名" 格式
local aaa = fcitx.splitString(FCITX_LUA_SPUSIM,",")

function switchIM()
    for _,v in ipairs(aaa) do
    
        -- 将程序名称和输入法名称切割开
        local program_im = fcitx.splitString(v,":")

        -- 如果当前程序名称和环境变量指定的程序名称相同，则将输入法切换为指定的输入法
        if (program_im[1] == fcitx.CurrentProgram()) then
            fcitx.setCurrentInputMethod(program_im[2],true)
        end
    end
 end

if (FCITX_LUA_SPUSIM ~= nil) then

    -- 监听输入法上下文创建事件
    fcitx.watchEvent(fcitx.EventType.ContextCreated, "switchIM")
end
