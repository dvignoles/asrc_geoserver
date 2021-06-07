<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld
http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" version="1.0.0">
  <NamedLayer>
    <Name>test_runoff-equal-interval</Name>
    <UserStyle>
      <Title>runoff equal interval</Title>
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
                <ColorMapEntry color="#0571b0" quantity="0" label="0 mm"/>

          		<ColorMapEntry color="#3d93c3" quantity="1" label="1 mm"/>

                <ColorMapEntry color="#76b4d5" quantity="2" label="2 mm"/>

                <ColorMapEntry color="#a6cfe3" quantity="3" label="3 mm"/>

                <ColorMapEntry color="#cfe3ed" quantity="4" label="4 mm"/>

                <ColorMapEntry color="#f7f7f7" quantity="5" label="5 mm"/>

                <ColorMapEntry color="#f6d7c8" quantity="6" label="6 mm"/>

                <ColorMapEntry color="#f5b69a" quantity="7" label="7 mm"/>

          		<ColorMapEntry color="#ec846e" quantity="8" label="8 mm"/>

                <ColorMapEntry color="#db4247" quantity="9" label="9 mm"/>

                <ColorMapEntry color="#ca0020" quantity="10" label="10 mm"/>

        </ColorMap>
          </RasterSymbolizer>
        </Rule>
       <VendorOption name="composite-base">true</VendorOption>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>