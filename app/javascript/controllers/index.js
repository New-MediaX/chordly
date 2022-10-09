// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ClipboardController from "./clipboard_controller"
application.register("clipboard", ClipboardController)

import EditableController from "./editable_controller"
application.register("editable", EditableController)

import FlashController from "./flash_controller"
application.register("flash", FlashController)

import SearchController from "./search_controller"
application.register("search", SearchController)

import NavbarController from "./navbar_controller"
application.register("navbar", NavbarController)

import ShowMoreController from "./show_more_controller"
application.register("show-more", ShowMoreController)

import FadeInController from "./fade_in_controller"
application.register("fade-in", FadeInController)
