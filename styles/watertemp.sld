<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld
http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" version="1.0.0">
  <NamedLayer>
    <Name>test_watertemp_equal-interval</Name>
    <UserStyle>
      <Title>qxt_watertemp equal interval</Title>
      <FeatureTypeStyle>
        <Rule>
          <RasterSymbolizer>
            <Opacity>1.0</Opacity>
                        <ChannelSelection>
              <GrayChannel>
                <SourceChannelName>1</SourceChannelName>
              </GrayChannel>
        </ChannelSelection>
        <ColorMap extended="true">
                <ColorMapEntry color="#0571b0" quantity="-5" label="-5&#176;C"/>

          		<ColorMapEntry color="#4396c5" quantity="-1" label="-1&#176;C"/>

                <ColorMapEntry color="#82bcd9" quantity="3" label="3&#176;C"/>

                <ColorMapEntry color="#b4d6e7" quantity="7" label="7&#176;C"/>

                <ColorMapEntry color="#e1ecf2" quantity="11" label="11&#176;C"/>

                <ColorMapEntry color="#f7e5dd" quantity="15" label="15&#176;C"/>

                <ColorMapEntry color="#f5c1a9" quantity="19" label="19&#176;C"/>

                <ColorMapEntry color="#f09377" quantity="23" label="23&#176;C"/>

          		<ColorMapEntry color="#dd494b" quantity="27" label="27&#176;C"/>
 
                 <ColorMapEntry color="#ca0020" quantity="31" label="31&#176;C"/>

        </ColorMap>
          </RasterSymbolizer>
        </Rule>
      <VendorOption name="composite-base">true</VendorOption>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>