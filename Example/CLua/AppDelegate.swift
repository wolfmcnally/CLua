//
//  AppDelegate.swift
//  CLua
//
//  Created by Wolf McNally on 04/20/2018.
//  Copyright (c) 2018 Wolf McNally. All rights reserved.
//

import UIKit
import CLua

func helloLua() {
    let luaHelloWorld = """
    print("Hello, world!")
    """

    let luaState = luaL_newstate()
    luaL_openlibs(luaState)
    luaL_loadstring(luaState, luaHelloWorld)
    let error = lua_pcallk(luaState, 0, 0, 0, 0, nil)
    if error != 0 {
        let luaMessage = lua_tolstring(luaState, -1, nil)!
        let message = String(utf8String: luaMessage)!
        print(message)
    }
    lua_close(luaState)
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        helloLua()

        return true
    }
}
