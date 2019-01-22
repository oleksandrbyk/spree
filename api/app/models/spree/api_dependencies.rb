module Spree
  class ApiDependencies < Preferences::Configuration
    def initialize
      set_storefront_defaults
    end

    def set_storefront_defaults
      # cart services
      @storefront_cart_create_service = Spree::Dependencies.cart_create_service
      @storefront_cart_add_item_service = Spree::Dependencies.cart_add_item_service
      @storefront_cart_remove_item_service = Spree::Dependencies.cart_remove_item_service
      @storefront_cart_set_item_quantity_service = Spree::Dependencies.cart_set_item_quantity_service

      # coupon code handler
      @storefront_coupon_handler = Spree::Dependencies.coupon_handler

      # checkout services
      @storefront_checkout_next_service = Spree::Dependencies.checkout_next_service
      @storefront_checkout_advance_service = Spree::Dependencies.checkout_advance_service
      @storefront_checkout_update_service = Spree::Dependencies.checkout_update_service
      @storefront_checkout_complete_service = Spree::Dependencies.checkout_complete_service
      @storefront_checkout_add_store_credit_service = Spree::Dependencies.checkout_add_store_credit_service
      @storefront_checkout_remove_store_credit_service = Spree::Dependencies.checkout_remove_store_credit_service
      @storefront_checkout_get_shipping_rates_service = Spree::Dependencies.checkout_get_shipping_rates_service

      # serializers
      @storefront_cart_serializer = Spree::V2::Storefront::CartSerializer
      @storefront_credit_card_serializer = Spree::V2::Storefront::CreditCardSerializer
      @storefront_country_serializer = Spree::V2::Storefront::CountrySerializer
      @storefront_user_serializer = Spree::V2::Storefront::UserSerializer
      @storefront_shipment_serializer = Spree::V2::Storefront::ShipmentSerializer
      @storefront_taxon_serializer = Spree::V2::Storefront::TaxonSerializer
      @storedront_payment_method_serializer = Spree::V2::Storefront::PaymentMethodSerializer
      @storefront_product_serializer = Spree::V2::Storefront::ProductSerializer

      #sorters
      @storefront_order_sorter = Spree::Dependencies.order_sorter
      @storefront_products_sorter = Spree::Dependencies.products_sorter

      #paginators
      @storefront_collection_paginator = Spree::Dependencies.collection_paginator

      # finders
      @storefront_country_finder = Spree::Dependencies.country_finder
      @storefront_current_order_finder = Spree::Dependencies.current_order_finder
      @storefront_completed_order_finder = Spree::Dependencies.completed_order_finder
      @storefront_credit_card_finder = Spree::Dependencies.credit_card_finder
      @storefront_products_finder = Spree::Dependencies.products_finder
      @storefront_taxon_finder = Spree::Dependencies.taxon_finder
    end

    attr_accessor :storefront_cart_create_service, :storefront_cart_add_item_service,
                  :storefront_cart_remove_item_service, :storefront_cart_set_item_quantity_service,
                  :storefront_coupon_handler, :storefront_checkout_next_service, :storefront_checkout_advance_service,
                  :storefront_checkout_update_service, :storefront_checkout_complete_service, :storefront_checkout_add_store_credit_service,
                  :storefront_checkout_remove_store_credit_service, :storefront_checkout_get_shipping_rates_service,
                  :storefront_cart_serializer, :storefront_credit_card_serializer, :storefront_credit_card_finder, :storefront_shipment_serializer, :storedront_payment_method_serializer,
                  :storefront_country_finder, :storefront_country_serializer, :storefront_current_order_finder, :storefront_completed_order_finder,
                  :storefront_order_sorter, :storefront_collection_paginator, :storefront_user_serializer, :storefront_products_sorter,
                  :storefront_products_finder, :storefront_product_serializer, :storefront_taxon_serializer, :storefront_taxon_finder
  end
end
