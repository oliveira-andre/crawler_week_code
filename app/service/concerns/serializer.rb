# frozen_string_literal: true

module Serializer
  def serialize(card)
    {
      title: card.search(@title_search).text.strip,
      amount: card.search(@amount_search).text.delete("\n").squeeze(' ').strip,
      link: job_link(card)
    }.compact
  end

  def job_link(card)
    @job_link = card.search(@link_search).text
    @job_link.match?(SITE_PREFIXES) ? @job_link : @link + @job_link
  end
end
