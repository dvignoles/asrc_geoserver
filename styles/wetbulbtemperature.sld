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

                <ColorMapEntry color="#0571b0" quantity="-37.5" label="--37.5&#176;C"/>

          		<ColorMapEntry color="#3d93c3" quantity="-30" label="-30&#176;C"/>

                <ColorMapEntry color="#76b4d5" quantity="-22.5" label="-22.5&#176;C"/>

                <ColorMapEntry color="#a6cfe3" quantity="-15" label="-15&#176;C"/>

                <ColorMapEntry color="#cfe3ed" quantity="-7.5" label="-7.5&#176;C"/>

                <ColorMapEntry color="#f7f7f7" quantity="0" label="0&#176;C"/>

                <ColorMapEntry color="#f6d7c8" quantity="7.5" label="7.5&#176;C"/>

                <ColorMapEntry color="#f5b69a" quantity="15" label="15&#176;C"/>

          		<ColorMapEntry color="#ec846e" quantity="22.5" label="22.5&#176;C"/>
 
                 <ColorMapEntry color="#db4247" quantity="30" label="30&#176;C"/>
          
                 <ColorMapEntry color="#ca0020" quantity="37.5" label="37.5&#176;C"/>
          
          

        </ColorMap>
          </RasterSymbolizer>
        </Rule>
      <VendorOption name="composite-base">true</VendorOption>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>