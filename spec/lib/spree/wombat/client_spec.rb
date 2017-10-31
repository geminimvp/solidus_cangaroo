require "spec_helper"

module Spree
  module Wombat
    describe Client do

      describe '.push_batches' do
        context 'when records have been added since last push time' do
          let!(:order) { create(:completed_order_with_promotion) }
          it 'pushes the records' do
            expect(Spree::Wombat::Client).to receive(:push).once
            Spree::Wombat::Client.push_batches('Spree::Order')
          end
        end
      end

    end
  end
end
