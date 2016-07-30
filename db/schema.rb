# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160730144441) do

  create_table "Abouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "brandVision",   limit: 65535
    t.text     "productPhotos", limit: 65535
    t.text     "aboutCompany",  limit: 65535
    t.text     "dealerPhotos",  limit: 65535
    t.text     "dealerNames",   limit: 65535
    t.datetime "createdAt",                   null: false
    t.datetime "updatedAt",                   null: false
  end

  create_table "AdditionalPurchaseProduct", primary_key: ["ProductId", "AdditionalPurchaseId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt",                        null: false
    t.datetime "updatedAt",                        null: false
    t.integer  "ProductId",            default: 0, null: false
    t.integer  "AdditionalPurchaseId", default: 0, null: false
    t.index ["AdditionalPurchaseId"], name: "AdditionalPurchaseId", using: :btree
  end

  create_table "AdditionalPurchaseProductGm", primary_key: ["ProductGmId", "AdditionalPurchaseId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt",                        null: false
    t.datetime "updatedAt",                        null: false
    t.integer  "ProductGmId",          default: 0, null: false
    t.integer  "AdditionalPurchaseId", default: 0, null: false
    t.index ["AdditionalPurchaseId"], name: "AdditionalPurchaseId", using: :btree
  end

  create_table "AdditionalPurchases", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.float    "discount",    limit: 24
    t.float    "reducePrice", limit: 24
    t.datetime "startDate"
    t.datetime "endDate"
    t.integer  "limit",                  default: 0
    t.string   "type",        limit: 8
    t.datetime "createdAt",                          null: false
    t.datetime "updatedAt",                          null: false
  end

  create_table "Banners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "url"
    t.string   "link",      default: "#"
    t.boolean  "actived",   default: false
    t.datetime "createdAt",                 null: false
    t.datetime "updatedAt",                 null: false
  end

  create_table "BonusPoints", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "remain"
    t.integer  "used"
    t.string   "email"
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
    t.index ["email"], name: "email", unique: true, using: :btree
  end

  create_table "Brands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "type",      limit: 10
    t.text     "desc",      limit: 65535
    t.string   "banner"
    t.text     "photos",    limit: 65535
    t.integer  "weight"
    t.datetime "createdAt",               null: false
    t.datetime "updatedAt",               null: false
  end

  create_table "Companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "avatar"
    t.string   "name"
    t.string   "fullname"
    t.string   "email"
    t.text     "desc",      limit: 65535
    t.string   "blog"
    t.string   "line"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "youtube"
    t.datetime "createdAt",               null: false
    t.datetime "updatedAt",               null: false
  end

  create_table "DptProductGm", primary_key: ["ProductGmId", "DptId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt",               null: false
    t.datetime "updatedAt",               null: false
    t.integer  "ProductGmId", default: 0, null: false
    t.integer  "DptId",       default: 0, null: false
    t.index ["DptId"], name: "DptId", using: :btree
  end

  create_table "DptSubProductGm", primary_key: ["ProductGmId", "DptSubId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt",               null: false
    t.datetime "updatedAt",               null: false
    t.integer  "ProductGmId", default: 0, null: false
    t.integer  "DptSubId",    default: 0, null: false
    t.index ["DptSubId"], name: "DptSubId", using: :btree
  end

  create_table "DptSubs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "weight",    default: 0
    t.boolean  "official"
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
    t.integer  "DptId"
    t.index ["DptId"], name: "DptId", using: :btree
  end

  create_table "Dpts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "icon"
    t.string   "iconHover"
    t.string   "color"
    t.string   "name"
    t.string   "enName"
    t.integer  "weight",              default: 0
    t.boolean  "official"
    t.datetime "createdAt",                       null: false
    t.datetime "updatedAt",                       null: false
    t.integer  "ShareProductShareId"
  end

  create_table "FAQForms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "content",   limit: 65535
    t.boolean  "finished",                default: false
    t.datetime "createdAt",                               null: false
    t.datetime "updatedAt",                               null: false
    t.integer  "FAQTypeId"
    t.index ["FAQTypeId"], name: "FAQTypeId", using: :btree
  end

  create_table "FAQTypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "weight",    default: 0
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
  end

  create_table "FAQs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "answer"
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
    t.integer  "FAQTypeId"
    t.index ["FAQTypeId"], name: "FAQTypeId", using: :btree
  end

  create_table "Images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "url"
    t.string   "path"
    t.boolean  "openWindow",        default: false
    t.datetime "createdAt",                         null: false
    t.datetime "updatedAt",                         null: false
    t.integer  "SelectionActiveId"
    t.index ["SelectionActiveId"], name: "SelectionActiveId", using: :btree
  end

  create_table "Invoices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type",        limit: 7, default: "duplex"
    t.string   "taxId"
    t.string   "charityName"
    t.string   "title"
    t.datetime "createdAt",                                null: false
    t.datetime "updatedAt",                                null: false
  end

  create_table "Likes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
  end

  create_table "Messages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "sendBy",    limit: 5
    t.string   "type",      limit: 19
    t.string   "from"
    t.string   "to"
    t.string   "toName"
    t.string   "subject"
    t.text     "text",      limit: 65535
    t.text     "html",      limit: 65535
    t.boolean  "success"
    t.string   "response"
    t.string   "error"
    t.datetime "createdAt",               null: false
    t.datetime "updatedAt",               null: false
  end

  create_table "News", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",   limit: 65535
    t.string   "cover"
    t.datetime "createdAt",               null: false
    t.datetime "updatedAt",               null: false
  end

  create_table "NewsFeatures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "index",     default: 0
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
    t.integer  "NewsId"
    t.index ["NewsId"], name: "NewsId", using: :btree
  end

  create_table "OrderItems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "quantity"
    t.float    "price",       limit: 24
    t.string   "comment"
    t.string   "spec"
    t.float    "packingFee",  limit: 24
    t.datetime "createdAt",              null: false
    t.datetime "updatedAt",              null: false
    t.integer  "OrderId"
    t.integer  "ProductId"
    t.index ["OrderId"], name: "OrderId", using: :btree
    t.index ["ProductId"], name: "ProductId", using: :btree
  end

  create_table "Orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "serialNumber"
    t.integer  "quantity"
    t.string   "merchantTradeNo"
    t.float    "paymentTotalAmount",         limit: 24
    t.boolean  "paymentIsConfirmed"
    t.datetime "paymentConfirmDate"
    t.string   "paymentConfirmName"
    t.string   "paymentConfirmPostfix"
    t.float    "paymentConfirmAmount",       limit: 24
    t.float    "paymentCreateConfirmAmount", limit: 24
    t.string   "TradeNo"
    t.integer  "allPayRtnCode"
    t.string   "allPayRtnMsg"
    t.string   "allPayPaymentType"
    t.datetime "allPayTradeDate"
    t.string   "BankCode"
    t.string   "vAccount"
    t.string   "ExpireDate"
    t.string   "PaymentNo"
    t.string   "Barcode1"
    t.string   "Barcode2"
    t.string   "Barcode3"
    t.integer  "useBunusPoint"
    t.string   "CheckMacValue"
    t.datetime "MerchantTradeDate"
    t.string   "description"
    t.string   "status",                     limit: 15, default: "new"
    t.float    "packingFee",                 limit: 24
    t.integer  "packingQuantity"
    t.datetime "createdAt",                                             null: false
    t.datetime "updatedAt",                                             null: false
    t.integer  "UserId"
    t.integer  "InvoiceId"
    t.integer  "ShopCodeId"
    t.index ["InvoiceId"], name: "InvoiceId", using: :btree
    t.index ["ShopCodeId"], name: "ShopCodeId", using: :btree
    t.index ["UserId"], name: "UserId", using: :btree
  end

  create_table "Passports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "protocol"
    t.string   "password"
    t.string   "accessToken"
    t.string   "provider"
    t.string   "identifier"
    t.text     "tokens",      limit: 65535
    t.datetime "createdAt",                 null: false
    t.datetime "updatedAt",                 null: false
    t.integer  "UserId"
    t.index ["UserId"], name: "UserId", using: :btree
  end

  create_table "ProductFeatures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
    t.integer  "ProductId"
    t.index ["ProductId"], name: "ProductId", using: :btree
  end

  create_table "ProductGms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "explain",    limit: 65535
    t.text     "usage",      limit: 65535
    t.text     "notice",     limit: 65535
    t.string   "tag"
    t.text     "coverPhoto", limit: 65535
    t.datetime "createdAt",                null: false
    t.datetime "updatedAt",                null: false
    t.datetime "deletedAt"
    t.integer  "BrandId"
    t.index ["BrandId"], name: "BrandId", using: :btree
  end

  create_table "Products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "name"
    t.integer  "stockQuantity"
    t.integer  "price"
    t.boolean  "isPublish"
    t.string   "size"
    t.string   "comment"
    t.string   "service",                      default: "[\"快遞宅配\"]"
    t.string   "country"
    t.string   "madeby"
    t.integer  "color"
    t.string   "productNumber"
    t.text     "description",    limit: 65535
    t.string   "spec"
    t.text     "photos",         limit: 65535
    t.integer  "weight",                       default: 0
    t.text     "characteristic", limit: 65535
    t.text     "specification",  limit: 65535
    t.text     "notice",         limit: 65535
    t.text     "teach",          limit: 65535
    t.datetime "createdAt",                                           null: false
    t.datetime "updatedAt",                                           null: false
    t.datetime "deletedAt"
    t.integer  "ProductGmId"
    t.index ["ProductGmId"], name: "ProductGmId", using: :btree
  end

  create_table "PromotionProduct", primary_key: ["PromotionId", "ProductId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt",               null: false
    t.datetime "updatedAt",               null: false
    t.integer  "PromotionId", default: 0, null: false
    t.integer  "ProductId",   default: 0, null: false
    t.index ["ProductId"], name: "ProductId", using: :btree
  end

  create_table "PromotionProductGm", primary_key: ["ProductGmId", "PromotionId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt",               null: false
    t.datetime "updatedAt",               null: false
    t.integer  "ProductGmId", default: 0, null: false
    t.integer  "PromotionId", default: 0, null: false
    t.index ["PromotionId"], name: "PromotionId", using: :btree
  end

  create_table "Promotions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "description"
    t.string   "type",         limit: 7
    t.string   "discountType", limit: 8
    t.date     "startDate"
    t.date     "endDate"
    t.float    "discount",     limit: 24
    t.float    "price",        limit: 24
    t.text     "coverPhoto",   limit: 65535
    t.datetime "createdAt",                  null: false
    t.datetime "updatedAt",                  null: false
  end

  create_table "Roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "authority"
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
  end

  create_table "SelectionActives", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type",      limit: 7
    t.integer  "weight"
    t.datetime "createdAt",           null: false
    t.datetime "updatedAt",           null: false
  end

  create_table "ShareFeatures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
    t.integer  "ShareId"
    t.index ["ShareId"], name: "ShareId", using: :btree
  end

  create_table "ShareProducts", primary_key: ["ShareId", "ProductId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
    t.integer  "ShareId",   default: 0, null: false
    t.integer  "ProductId", default: 0, null: false
    t.index ["ProductId"], name: "ProductId", using: :btree
  end

  create_table "ShareTypeIcons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "createdAt",   null: false
    t.datetime "updatedAt",   null: false
    t.integer  "ShareTypeId"
    t.index ["ShareTypeId"], name: "ShareTypeId", using: :btree
  end

  create_table "ShareTypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "cover"
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
  end

  create_table "Shares", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",         limit: 65535
    t.string   "cover"
    t.datetime "createdAt",                     null: false
    t.datetime "updatedAt",                     null: false
    t.integer  "ShareTypeId"
    t.integer  "UserId"
    t.integer  "ShareTypeIconId"
    t.index ["ShareTypeIconId"], name: "ShareTypeIconId", using: :btree
    t.index ["ShareTypeId"], name: "ShareTypeId", using: :btree
    t.index ["UserId"], name: "UserId", using: :btree
  end

  create_table "Shipments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "mobile"
    t.string   "taxId"
    t.string   "email"
    t.string   "address"
    t.string   "shippingType",   limit: 10, default: "postoffice"
    t.string   "shippingRegion"
    t.float    "shippingFee",    limit: 24
    t.string   "shippingId"
    t.datetime "createdAt",                                        null: false
    t.datetime "updatedAt",                                        null: false
    t.integer  "OrderId"
    t.index ["OrderId"], name: "OrderId", using: :btree
  end

  create_table "Shippings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type",      limit: 10, default: "delivery"
    t.string   "region"
    t.integer  "fee"
    t.datetime "createdAt",                                 null: false
    t.datetime "updatedAt",                                 null: false
  end

  create_table "ShopCodes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "code"
    t.string   "title"
    t.string   "type",            limit: 8
    t.float    "description",     limit: 24
    t.integer  "restriction"
    t.date     "startDate"
    t.date     "endDate"
    t.string   "restrictionDate",               default: "off"
    t.string   "sentType",        limit: 8
    t.text     "sentContent",     limit: 65535
    t.datetime "createdAt",                                     null: false
    t.datetime "updatedAt",                                     null: false
  end

  create_table "Sliders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "cover"
    t.boolean  "openWindow",                default: false
    t.string   "title"
    t.text     "description", limit: 65535
    t.string   "location"
    t.string   "color"
    t.string   "link"
    t.datetime "createdAt",                                 null: false
    t.datetime "updatedAt",                                 null: false
  end

  create_table "Tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",      null: false
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
  end

  create_table "TopicActives", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.integer  "weight",    default: 0
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
    t.integer  "ImageAId"
    t.integer  "ImageA1Id"
    t.integer  "ImageA2Id"
    t.integer  "ImageBId"
    t.integer  "ImageB1Id"
    t.integer  "ImageB2Id"
    t.integer  "ImageCId"
    t.integer  "ImageC1Id"
    t.integer  "ImageC2Id"
    t.index ["ImageA1Id"], name: "ImageA1Id", using: :btree
    t.index ["ImageA2Id"], name: "ImageA2Id", using: :btree
    t.index ["ImageAId"], name: "ImageAId", using: :btree
    t.index ["ImageB1Id"], name: "ImageB1Id", using: :btree
    t.index ["ImageB2Id"], name: "ImageB2Id", using: :btree
    t.index ["ImageBId"], name: "ImageBId", using: :btree
    t.index ["ImageC1Id"], name: "ImageC1Id", using: :btree
    t.index ["ImageC2Id"], name: "ImageC2Id", using: :btree
    t.index ["ImageCId"], name: "ImageCId", using: :btree
  end

  create_table "UserAccessTokens", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "token"
    t.datetime "ttl"
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
    t.integer  "UserId"
    t.index ["UserId"], name: "UserId", using: :btree
  end

  create_table "UserForgetTokens", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "token"
    t.datetime "ttl"
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
    t.integer  "UserId"
    t.index ["UserId"], name: "UserId", using: :btree
  end

  create_table "UserLike", primary_key: ["UserId", "LikeId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "createdAt",             null: false
    t.datetime "updatedAt",             null: false
    t.integer  "UserId",    default: 0, null: false
    t.integer  "LikeId",    default: 0, null: false
    t.index ["LikeId"], name: "LikeId", using: :btree
  end

  create_table "UserMailCertifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "token"
    t.datetime "ttl"
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
    t.integer  "UserId"
    t.index ["UserId"], name: "UserId", using: :btree
  end

  create_table "Users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "fullName"
    t.string   "gender",            limit: 6
    t.string   "email"
    t.string   "password"
    t.string   "mobile"
    t.string   "birthYear"
    t.string   "birthMonth"
    t.string   "birthDay"
    t.datetime "birthDate"
    t.string   "address"
    t.string   "city"
    t.string   "region"
    t.integer  "zipcode"
    t.string   "comment"
    t.string   "orderSyncToken"
    t.string   "forgotToken"
    t.boolean  "verification",                default: false
    t.boolean  "admin",                       default: false
    t.datetime "dateCreated"
    t.datetime "lastUpdated"
    t.boolean  "privacyTermsAgree",           default: true
    t.boolean  "subscription",                default: false
    t.datetime "createdAt",                                   null: false
    t.datetime "updatedAt",                                   null: false
    t.integer  "RoleId"
    t.integer  "ShopCodeId"
    t.string   "nickname"
    t.index ["RoleId"], name: "RoleId", using: :btree
    t.index ["ShopCodeId"], name: "ShopCodeId", using: :btree
    t.index ["email"], name: "email", unique: true, using: :btree
  end

  add_foreign_key "AdditionalPurchaseProduct", "AdditionalPurchases", column: "AdditionalPurchaseId", name: "additionalpurchaseproduct_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "AdditionalPurchaseProduct", "Products", column: "ProductId", name: "additionalpurchaseproduct_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "AdditionalPurchaseProductGm", "AdditionalPurchases", column: "AdditionalPurchaseId", name: "additionalpurchaseproductgm_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "AdditionalPurchaseProductGm", "ProductGms", column: "ProductGmId", name: "additionalpurchaseproductgm_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "DptProductGm", "Dpts", column: "DptId", name: "dptproductgm_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "DptProductGm", "ProductGms", column: "ProductGmId", name: "dptproductgm_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "DptSubProductGm", "DptSubs", column: "DptSubId", name: "dptsubproductgm_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "DptSubProductGm", "ProductGms", column: "ProductGmId", name: "dptsubproductgm_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "DptSubs", "Dpts", column: "DptId", name: "dptsubs_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "FAQForms", "FAQTypes", column: "FAQTypeId", name: "faqforms_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "FAQs", "FAQTypes", column: "FAQTypeId", name: "faqs_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Images", "SelectionActives", column: "SelectionActiveId", name: "images_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "NewsFeatures", "News", column: "NewsId", name: "newsfeatures_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "OrderItems", "Orders", column: "OrderId", name: "orderitems_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "OrderItems", "Products", column: "ProductId", name: "orderitems_ibfk_2", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Orders", "Invoices", column: "InvoiceId", name: "orders_ibfk_2", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Orders", "ShopCodes", column: "ShopCodeId", name: "orders_ibfk_3", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Orders", "Users", column: "UserId", name: "orders_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Passports", "Users", column: "UserId", name: "passports_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "ProductFeatures", "Products", column: "ProductId", name: "productfeatures_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "ProductGms", "Brands", column: "BrandId", name: "productgms_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Products", "ProductGms", column: "ProductGmId", name: "products_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "PromotionProduct", "Products", column: "ProductId", name: "promotionproduct_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "PromotionProduct", "Promotions", column: "PromotionId", name: "promotionproduct_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "PromotionProductGm", "ProductGms", column: "ProductGmId", name: "promotionproductgm_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "PromotionProductGm", "Promotions", column: "PromotionId", name: "promotionproductgm_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "ShareFeatures", "Shares", column: "ShareId", name: "sharefeatures_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "ShareProducts", "Products", column: "ProductId", name: "shareproducts_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "ShareProducts", "Shares", column: "ShareId", name: "shareproducts_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "ShareTypeIcons", "ShareTypes", column: "ShareTypeId", name: "sharetypeicons_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Shares", "ShareTypeIcons", column: "ShareTypeIconId", name: "shares_ibfk_3", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Shares", "ShareTypes", column: "ShareTypeId", name: "shares_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Shares", "Users", column: "UserId", name: "shares_ibfk_2", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Shipments", "Orders", column: "OrderId", name: "shipments_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageA1Id", name: "topicactives_ibfk_2", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageA2Id", name: "topicactives_ibfk_3", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageAId", name: "topicactives_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageB1Id", name: "topicactives_ibfk_5", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageB2Id", name: "topicactives_ibfk_6", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageBId", name: "topicactives_ibfk_4", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageC1Id", name: "topicactives_ibfk_8", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageC2Id", name: "topicactives_ibfk_9", on_update: :cascade, on_delete: :nullify
  add_foreign_key "TopicActives", "Images", column: "ImageCId", name: "topicactives_ibfk_7", on_update: :cascade, on_delete: :nullify
  add_foreign_key "UserAccessTokens", "Users", column: "UserId", name: "useraccesstokens_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "UserForgetTokens", "Users", column: "UserId", name: "userforgettokens_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "UserLike", "Likes", column: "LikeId", name: "userlike_ibfk_2", on_update: :cascade, on_delete: :cascade
  add_foreign_key "UserLike", "Users", column: "UserId", name: "userlike_ibfk_1", on_update: :cascade, on_delete: :cascade
  add_foreign_key "UserMailCertifications", "Users", column: "UserId", name: "usermailcertifications_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Users", "Roles", column: "RoleId", name: "users_ibfk_1", on_update: :cascade, on_delete: :nullify
  add_foreign_key "Users", "ShopCodes", column: "ShopCodeId", name: "users_ibfk_2", on_update: :cascade, on_delete: :nullify
end
