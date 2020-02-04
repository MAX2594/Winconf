// -- 直接运行 --

// var wsh = new ActiveXObject("WScript.Shell");
// wsh.run("cmd.exe /k m help");


// -- node执行 --

const cp = require("child_process");

var argv = process.argv

var url = argv[0]
var url1 = argv[1]

var value1 = argv[2]

// console.log(url)
// console.log(url1)

// 查找命令
var getCommandStr = (argv) => {
    let commandMap = new Map([
        ['zzone', 'start G:\\Yaoliming\\ && exit 0'],
        ['help', 'echo help'],
        ['?', 'echo ?'],
        ['git', 'G: && cd Yaoliming\\project\\ && cls && start C:\\Program" "Files\\Git\\bin\\sh.exe'], // todo: 暂时未找到运行后关闭原来窗口的方法
        // ['git', 'G: && cd Yaoliming\\project\\ && cls && "C:\\Program Files\\Git\\bin\\sh.exe"'],
    ])
    let commandStr = commandMap.get(argv)
    return commandStr ? commandStr : 'echo Nothing'
}

// 执行完成后 的回调
let callback = (error, stdout, stderr) => {
    if(error !==null){
        console.log("exec error: " + error);
    }else{
        // console.log("成功");
        console.log(stdout)
    }
    process.exit()
    // console.log('stdout: ' + stdout);
    // console.log('stderr: ' + stderr);
}

// 执行命令
var execFile = () => {
    cp.execFile("G:\\Yaoliming\\MScript\\mm.bat", [value1], callback)
}
var exec = (argv) => {
    let commandStr = getCommandStr(argv)
    cp.exec(commandStr, callback)
}

// 执行
if(value1) exec(value1)