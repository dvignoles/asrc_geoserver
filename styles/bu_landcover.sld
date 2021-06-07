<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/sld
http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd" version="1.0.0">
  <NamedLayer>
    <Name>landcover</Name>
    <UserStyle>
      <Title>A raster style</Title>
      <FeatureTypeStyle>
        <Rule>
          <RasterSymbolizer>
            <Opacity>1.0</Opacity>
                        <ChannelSelection>
              <GrayChannel>
                <SourceChannelName>1</SourceChannelName>
              </GrayChannel>
        </ChannelSelection>
        <ColorMap type="values">
				<ColorMapEntry color="#00420d" quantity="2" label="Evergreen"/>
          		<ColorMapEntry color="#5aff01" quantity="4" label="Deciduous"/>
                <ColorMapEntry color="#078f00" quantity="5" label="Mixed Forest"/>
                <ColorMapEntry color="#622c05" quantity="19" label="Mangrove"/>
                <ColorMapEntry color="#d44633" quantity="20" label="Flooded Forest"/>

                <ColorMapEntry color="#ffce9d" quantity="9" label="Savannah"/>
                <ColorMapEntry color="#ff9501" quantity="10" label="Grass"/>
          
                <ColorMapEntry color="#00048c" quantity="25" label="Water"/>
                <ColorMapEntry color="#0083fe" quantity="11" label="Wetland"/>

                <ColorMapEntry color="#fff301" quantity="12" label="Pasture/Cropland"/>
          		<ColorMapEntry color="#ed73ff" quantity="17" label="Rice Paddy"/>
          		<ColorMapEntry color="#95b600" quantity="18" label="Plantation"/>
          		<ColorMapEntry color="#52f3d6" quantity="21" label="Aquaculture"/>
          
                <ColorMapEntry color="#ff0501" quantity="13" label="Urban"/>
          		<ColorMapEntry color="#4b4b4b" quantity="16" label="Barren"/>


        </ColorMap>
          </RasterSymbolizer>
        </Rule>
       <VendorOption name="composite-base">true</VendorOption>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>