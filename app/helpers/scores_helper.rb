module ScoresHelper
  def status_badge(status)
    if status == "RESIKO TINGGI"
      '<span class="tag is-danger" style="width:100%;">RISIKO TINGGI</span>'
    elsif status == "RESIKO SEDANG"
      '<span class="tag is-orange" style="width:100%;">RISIKO SEDANG</span>'
    elsif status == "RESIKO RENDAH"
      '<span class="tag is-warning" style="width:100%;">RISIKO RENDAH</span>'
    elsif status == "TIDAK ADA KASUS"
      '<span class="tag is-success" style="width:100%;">TIDAK ADA KASUS</span>'
    elsif status == "TIDAK TERDAMPAK"
      '<span class="tag is-light" style="width:100%;">TIDAK TERDAMPAK</span>'
    end
  end
end
