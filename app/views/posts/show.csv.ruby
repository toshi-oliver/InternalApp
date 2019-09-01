require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(氏名 メール 携帯番号 最寄駅 住所 運営有無 契約会社 運営期間(年) 運営期間(ヶ月) 中途解約金有無 解約告知期間(ヶ月) 中途解約金 1ヶ月賃料 税区分 土地の状況 駐車可能な台数 駐車場面積 面積単位 利用期間(開始) 利用期間(終了) 希望賃料 その他特記事項(顧客) その他特記事項(社員) 作成日時 更新日時)
  csv << csv_column_names
    csv_column_values = [
      @post.client_name,
      @post.email,
      @post.phone_number,
      @post.near_station,
      @post.parking_address,
      @post.parking_present,
      @post.contract_company,
      @post.year_period,
      @post.month_period,
      @post.midterm_cancellation,
      @post.cancellation_period,
      @post.cancellation_money,
      @post.rent,
      @post.tax_type,
      @post.land_estate,
      @post.parking_possible_number,
      @post.parking_size,
      @post.parking_size_unit,
      @post.start_date,
      @post.end_date,
      @post.desired_rent,
      @post.client_textarea,
      @post.user_textarea,
      @post.created_at,
      @post.updated_at
    ]
    csv << csv_column_values
end
