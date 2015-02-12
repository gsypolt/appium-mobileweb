Feature: USAT Fronts

  @sections @fronts
  Scenario Outline: Section Fronts
    When Go directly to "<section_href>" front
    Then I should see "<header_class>" front

  Examples:
    | section_href  | header_class                |
    | /news/        | .header-logo.header-news    |
    | /sports/      | .header-logo.header-sports  |
    | /life/        | .header-logo.header-life    |
    | /money/       | .header-logo.header-money   |
    | /tech/        | .header-logo.header-tech    |
    | /travel/      | .header-logo.header-travel  |
    | /opinion/     | .header-logo.header-opinion |
    | /weather/     | .header-logo.header-weather |
    | /media/       | .header-logo.header-media   |