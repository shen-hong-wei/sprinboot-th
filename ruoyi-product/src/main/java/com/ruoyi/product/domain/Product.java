package com.ruoyi.product.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 商品管理对象 product
 * 
 * @author ruoyi
 * @date 2024-06-25
 */
public class Product extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 商品主键 */
    private Long productId;

    /** 商品名称 */
    @Excel(name = "商品名称")
    private String productName;

    /** 商品类型 */
    @Excel(name = "商品类型")
    private Integer productType;

    /** 商品价格 */
    @Excel(name = "商品价格")
    private String productPrice;

    /** 商品状态 */
    @Excel(name = "商品状态")
    private Integer status;

    /** 删除标志（0代表存在 2代表删除） */
    private Integer delFlag;

    public void setProductId(Long productId) 
    {
        this.productId = productId;
    }

    public Long getProductId() 
    {
        return productId;
    }

    public void setProductName(String productName) 
    {
        this.productName = productName;
    }

    public String getProductName() 
    {
        return productName;
    }

    public void setProductType(Integer productType) 
    {
        this.productType = productType;
    }

    public Integer getProductType() 
    {
        return productType;
    }

    public void setProductPrice(String productPrice) 
    {
        this.productPrice = productPrice;
    }

    public String getProductPrice() 
    {
        return productPrice;
    }

    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }

    public void setDelFlag(Integer delFlag) 
    {
        this.delFlag = delFlag;
    }

    public Integer getDelFlag() 
    {
        return delFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("productId", getProductId())
            .append("productName", getProductName())
            .append("productType", getProductType())
            .append("productPrice", getProductPrice())
            .append("status", getStatus())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
