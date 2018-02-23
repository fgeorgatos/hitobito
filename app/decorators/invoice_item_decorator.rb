# encoding: utf-8

#  Copyright (c) 2012-2017, Jungwacht Blauring Schweiz. This file is part of
#  hitobito and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito.


class InvoiceItemDecorator < ApplicationDecorator
  decorates :invoice_item

  def cost
    h.number_to_currency(model.cost, format: '%n %u')
  end

  def unit_cost
    h.number_to_currency(model.unit_cost, format: '%n %u')
  end

  def vat_rate
    h.number_to_percentage(model.vat_rate || 0)
  end

  def total
    h.number_to_currency(model.total, format: '%n %u')
  end

end

