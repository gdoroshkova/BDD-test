Description: Use API for Trello Board creation
Meta:
@skip
Scenario: API create board
Given request body:{
}
When I send HTTP POST to the relative URL '/1/boards/?name=test333&defaultLabels=true&defaultLists=true&keepFromSource=none&prefs_permissionLevel=private&prefs_voting=disabled&prefs_comments=members&prefs_invitations=members&prefs_selfJoin=true&prefs_cardCovers=true&prefs_background=blue&prefs_cardAging=regular&key=221b8b146471309c812d7318bc5f0170&token=218472c5be1f2e4e734732135c7dfecf989945270acf415722134aba04624e06'
Then the response code is equal to '200'
Then a JSON element by the JSON path '$.name' is equal to '"test333"'
