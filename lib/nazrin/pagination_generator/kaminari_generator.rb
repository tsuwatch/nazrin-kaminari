module Nazrin
  module PaginationGenerator
    module KaminariGenerator
      def generate(collection, options)
        ::Kaminari
          .paginate_array(collection, total_count: options[:total_count])
          .page(options[:current_page])
          .per(options[:per_page]).tap do |paginate_array|
            paginate_array.max_pages(options[:last_page])
          end
      end
    end
  end
end

Nazrin::PaginationGenerator.singleton_class.prepend(
  Nazrin::PaginationGenerator::KaminariGenerator
)
