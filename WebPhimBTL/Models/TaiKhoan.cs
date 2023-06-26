using System;
using System.Collections.Generic;

namespace WebPhimBTL.Models;

public partial class TaiKhoan
{
    public int MaTaiKhoan { get; set; }

    public string? TenTaiKhoan { get; set; }

    public string? PassWord { get; set; }

    public string? Email { get; set; }

    public string? SoDt { get; set; }

    public string? Anh { get; set; }

    public int? PhanQuyen { get; set; }

    public int? IsDeleted { get; set; }

    public virtual ICollection<Comment> Comments { get; } = new List<Comment>();

    public virtual ICollection<DanhGiaChung> DanhGiaChungs { get; } = new List<DanhGiaChung>();

    public virtual ICollection<ThoiLuongDaXem> ThoiLuongDaXems { get; } = new List<ThoiLuongDaXem>();
}
