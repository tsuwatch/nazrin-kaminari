require 'spec_helper'

describe Nazrin::PaginationGenerator::KaminariGenerator do
  let(:paginated_array) do
    Nazrin::PaginationGenerator.generate(
      [1, 2, 3],
      current_page: 1, per_page: 1, total_count: 3
    )
  end

  it { expect(paginated_array.class).to eq Kaminari::PaginatableArray }
  it { expect(paginated_array.current_page).to eq 1 }
  it { expect(paginated_array.total_pages).to eq 3 }
end
