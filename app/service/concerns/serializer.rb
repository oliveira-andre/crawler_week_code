# frozen_string_literal: true

module Serializer
  def serialize(card)
    {
      title: card.search(@title_search).text.strip,
      amount: load_amount(card),
      link: job_link(card),
      name: @name
    }.compact
  end

  def load_amount(card)
   @amount = card.search(@amount_search).text.delete("\n").squeeze(' ').strip
   @amount&.match?(MONEY_PREFIX) ? @amount : 'To Combine or not informed'
  end

  def job_link(card)
    job_link = card.search(@link_search).attr('href')
    job_link = job_link.text if job_link&.text
    @main_link + job_link
  end
end
