package com.eighteengray.sophonapm

import android.app.Application


class CommonApplication : Application() {

    override fun onCreate() {
        super.onCreate()
        frameworkInit()
    }

    private fun frameworkInit() {
    }

    private fun serviceInit() {}

    private fun syncDataGet() {}

    private fun asyncDataGet() {}
}
