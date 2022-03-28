object WebModule1: TWebModule1
  OldCreateOrder = False
  Actions = <
    item
      Name = 'WebActionItem1'
      OnAction = WebModule1WebActionItem1Action
    end>
  Left = 119
  Top = 103
  Height = 167
  Width = 318
  object Table1: TTable
    DatabaseName = 'System DNS Foxpro for LR3 DB'
    FieldDefs = <
      item
        Name = 'product_id'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'supplier_id'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'category_id'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'product_name'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'english_name'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'quantity_in_unit'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'unit_price'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'unit_cost'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'units_in_stock'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'units_on_order'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'reorder_level'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'discontinued'
        Attributes = [faRequired]
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'product_id'
        Options = [ixUnique, ixExpression]
      end
      item
        Name = 'category_i'
        Fields = 'category_id'
      end
      item
        Name = 'product_na'
        Fields = 'product_name'
      end
      item
        Name = 'supplier_i'
        Fields = 'supplier_id'
      end>
    StoreDefs = True
    TableName = 'products'
    Left = 80
    Top = 16
  end
  object DataSetTableProducer1: TDataSetTableProducer
    Columns = <
      item
        Align = haCenter
        BgColor = 'White'
        FieldName = 'product_id'
        Title.Align = haCenter
        Title.BgColor = 'Green'
        Title.Caption = #8470
      end
      item
        Align = haLeft
        BgColor = 'White'
        FieldName = 'english_name'
        Title.BgColor = 'Green'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      end
      item
        Align = haLeft
        BgColor = 'White'
        FieldName = 'quantity_in_unit'
        Title.BgColor = 'Green'
        Title.Caption = #1042#1077#1089
      end
      item
        Align = haRight
        BgColor = 'White'
        FieldName = 'unit_cost'
        Title.BgColor = 'Green'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      end
      item
        Align = haRight
        BgColor = 'White'
        FieldName = 'units_in_stock'
        Title.BgColor = 'Green'
        Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      end>
    DataSet = Table1
    TableAttributes.Align = haCenter
    TableAttributes.BgColor = 'Maroon'
    TableAttributes.Border = 4
    TableAttributes.CellSpacing = 4
    TableAttributes.CellPadding = 3
    TableAttributes.Width = 0
    Left = 80
    Top = 64
  end
end
