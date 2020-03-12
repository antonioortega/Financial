object DMCEP: TDMCEP
  OldCreateOrder = False
  Height = 158
  Width = 271
  object RESTClientCEP: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://apps.widenet.com.br/busca-cep/api/cep/17525000.json'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 40
    Top = 16
  end
  object RESTRequestCEP: TRESTRequest
    Client = RESTClientCEP
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 104
    Top = 16
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 176
    Top = 16
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tbmCep
    FieldDefs = <>
    Response = RESTResponse1
    NestedElements = True
    Left = 160
    Top = 96
  end
  object tbmCep: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'status'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ok'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'code'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'state'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'city'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'district'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'address'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'statusText'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 40
    Top = 96
    object tbmCepstatus: TWideStringField
      FieldName = 'status'
      Size = 255
    end
    object tbmCepok: TWideStringField
      FieldName = 'ok'
      Size = 255
    end
    object tbmCepcode: TWideStringField
      FieldName = 'code'
      Size = 255
    end
    object tbmCepstate: TWideStringField
      FieldName = 'state'
      Size = 255
    end
    object tbmCepcity: TWideStringField
      FieldName = 'city'
      Size = 255
    end
    object tbmCepdistrict: TWideStringField
      FieldName = 'district'
      Size = 255
    end
    object tbmCepaddress: TWideStringField
      FieldName = 'address'
      Size = 255
    end
    object tbmCepstatusText: TWideStringField
      FieldName = 'statusText'
      Size = 255
    end
  end
end
