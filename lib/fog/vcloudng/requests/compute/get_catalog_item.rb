module Fog
  module Compute
    class Vcloudng
      class Real

        def get_catalog_item(catalog_item_id)
          request(
            :expects  => 200,
            :headers  => { 'Accept' => 'application/*+xml;version=1.5' },
            :method   => 'GET',
            :parser => Fog::ToHashDocument.new,
            :path     => "catalogItem/#{catalog_item_id}"
          )
        end
        

      end
    end
  end
end
