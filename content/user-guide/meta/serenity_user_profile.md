---
title: Serenity User Profile
weight: 5
geekdocAlign: center
---

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}

.glow-unique {
  text-shadow: 0 0 5px purple;
}

.glow-leaf {
  text-shadow: 0 0 5px green;
}

.glow-rare {
  text-shadow: 0 0 5px yellow;
}

.glow-basic {}

.glow-difficulty-novice {
  text-shadow: 0 0 2px blue;
}

.glow-difficulty-easy {
  text-shadow: 0 0 2px green;
}

.glow-difficulty-medium {
  text-shadow: 0 0 2px yellow;
}

.glow-difficulty-hard {
  text-shadow: 0 0 2px red;
}

.glow-difficulty-expert {
  text-shadow: 0 0 2px purple;
}

.glow-difficulty-edit {
  text-shadow: 0 0 2px grey;
}

.chart-detail {
  display: flex;
  flex-basis: 50%;
  justify-content: space-between;
  flex-direction: row;
  justify-content: center;
  margin-bottom: -20px;
  margin-top: -20px;
}

.chart-detail-name {
  align-self: start;
  flex-basis: 90%;
}

.chart-detail-name-disabled {
  align-self: start;
  flex-basis: 90%;
  color: #3f4142;
}

.chart-detail-value {
  align-self: end;
}

.chart-detail-value-disabled {
  align-self: end;
  color: #3f4142;
}

.chart-detail-div-section {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-between;
  padding-right: 20px;
}

.chart-header-section-novice {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #094c6d;
}

.chart-section-novice {
  display: flex;
  width: 262px;
  border: 1px solid #0c91d5;
  background-color: #043049;
  flex-direction: column;
}

.chart-header-section-easy {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #046557;
}

.chart-section-easy {
  display: flex;
  width: 262px;
  border: 1px solid  #00d5a5;
  background-color: #004636;
  flex-direction: column;
}

.chart-header-section-medium {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #57401a;
}

.chart-section-medium {
  display: flex;
  width: 262px;
  border: 1px solid #d57100;
  background-color: #492500;
  flex-direction: column;
}

.chart-header-section-hard {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #541926;
}

.chart-section-hard {
  display: flex;
  width: 262px;
  border: 1px solid #d50721;
  background-color: #47020b;
  flex-direction: column;
}

.chart-header-section-expert {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #3b186d;
}

.chart-section-expert {
  display: flex;
  width: 262px;
  border: 1px solid #9406d5;
  background-color: #300249;
  flex-direction: column;
}

.chart-header-section-edit {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #33475f;
}

.chart-section-edit {
  display: flex;
  width: 262px;
  border: 1px solid #7f86b9;
  background-color: #2a2c3d;
  flex-direction: column;
}

.mode-charts-section {
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  flex-wrap: wrap;
}

.chart-header-span-section {
  display: flex;
  flex-basis: 70%;
  flex-direction: column; 
  align-items: flex-start;
}

.glow {
  color: #fff;
  -webkit-animation: glow 1s ease-in-out;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073
  }
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6
  }
}
</style>

<label for="user-select">Select User:</label>

<select name="users" id="user-select" style="min-width: 260px; width: 30%; padding: 16px 20px; border: none; border-radius: 4px; background-color: #24282c;">
    <option value="">Select an option</option>
</select>

---

<h1 id="userName"></h1>

<div id= 'profileContent'>
<p>

<div id="tagsDiv" style="display: none;">
<h2>Tags</h2>

<div id='tagsRow' style="display: flex; flex-wrap: wrap; justify-items: center; justify-content: center; gap: 30px;">
</div>

</p>

<h2>Resume</h2>

<p id="userResume">Select user to view resume.</p>
<!-- Daniel Rotwind has submitted 93 charts, 4 songs and 9 graphics for Project OutFox Serenity.-->
<p id="userMostChartsForSong">Most Charted Song: Select User to View.</p>

<p id="userMostChartsForMode">Most Charted Mode: Select User to View</p>

</div>

<div style="overflow-x:auto; display: none;" id="userSongSubmissionDiv">
<h2>Song Submissions</h2>
</div>

<div style="overflow-x:auto; display: none;" id="userGraphicSubmissionDiv">
<h2>Graphic Submissions</h2>
</div>

<div style="overflow-x:auto; display: none;" id="userChartSubmissionDiv">
<h2>Chart Submission</h2>
</div>

<div id="socialsOuterDiv" style='display: none'>
<h2>Socials</h2>
<div id='socials' style="display: flex; flex-wrap: wrap; justify-items: center; justify-content: center; gap: 30px;">
</div>
</div>

If you want a social add/removed from your profile then join the [Project OutFox Discord Server](https://discord.gg/cN4TjgQdcA) and contact the moderator team.

<div id="copyData" style="display: none;">
Want the data that we have stored for this profile? Click the button bellow and the JSON Object will be copied to your clipboard. (Tags not included!)
<div>
  <span class="gdoc-button gdoc-button--large">
    <a class="gdoc-button__link">
      Copy Data to Clipboard
    </a>
  </span>
</div>
</div>

_Written and Maintained by Moru Zerinho6_

<script src="https://unpkg.com/@popperjs/core@2">

</script>
<script src="https://unpkg.com/tippy.js@6">
  
</script>
<script>
const form = document.getElementById('user-select')
const userNameHeading = document.getElementById('userName')
const tagsDiv = document.getElementById('tagsDiv')
const tagsRow = document.getElementById('tagsRow')
const userResume = document.getElementById('userResume')
const userMostChartsForSong = document.getElementById('userMostChartsForSong')
const userMostChartsForMode = document.getElementById('userMostChartsForMode')
const userSongSubmissionDiv = document.getElementById('userSongSubmissionDiv')
const userGraphicSubmissionDiv = document.getElementById('userGraphicSubmissionDiv')
const userChartSubmissionDiv = document.getElementById('userChartSubmissionDiv')
const socialsDiv = document.getElementById('socials')
const socialsOuterDiv = document.getElementById('socialsOuterDiv')
const copyData = document.getElementById('copyData')
const dbURL = document.documentURI.split('meta')[0] + 'meta/serenity_db.json'
const main = async () => {
  const req = await fetch(dbURL)

  if (req.status !== 200) {
    console.error('Failed to get serenity data. Retrying.')
    main()
  }

  const serenityDb = await req.json()

  if (!serenityDb) {
    alert('Could not load serenity data, try reloading the page or contact the OutFox Team.')
    return
  }

  const allAvailableUsers = () => {
    const users = []
    serenityDb.volumes.forEach((volume) => {

      volume.music_authors.forEach((author) => {
        if (users.includes(author)) return

        users.push(author)
      })

      volume.chart_authors.forEach((author) => {
        if (users.includes(author)) return

        users.push(author)
      })

      volume.graphic_authors.forEach((author) => {
        if (users.includes(author)) return

        users.push(author)
      })
    })

    serenityDb.user_hall.forEach((user) => {
      if (users.includes(user.name)) return

      users.push(user.name)
    })

    return users.sort((a, b) => a.localeCompare(b))
  }

  const collectUserData = (user) => {
    const userData = {
      name: user,
      contributedToVolumes: [],
      contributedToSongs: [],
      contributedToModes: [],
      contributedToStyles: [],
      songContributions: [],
      graphicContributions: {},
      chartContributions: []
    }

    serenityDb.volumes.forEach((volume) => {
      if (volume.music_authors.includes(user) || volume.graphic_authors.includes(user) || volume.chart_authors.includes(user)) {
        userData.contributedToVolumes.push(volume.abrev)
      }

      volume.songs.forEach((song) => {
        if (!userData.contributedToSongs.includes(song.title) && (song.chart_authors.includes(user) || song.graphic_authors.includes(user) || song.chart_authors.includes(user))) {
          userData.contributedToSongs.push(song.title)
        }

        if (song.music_authors.includes(user)) {
          const songInfo = {
            volume,
            author: song.music_authors,
            title: song.title,
            length: song.length,
            genre: song.genre,
            bpm: song.bpm,
            license: song.license
          }
          userData.songContributions.push(songInfo)
        }

        if (song.graphics.background && (Array.isArray(song.graphics.background.author) ? song.graphics.background.author.includes(user) : song.graphics.background.author === user)) {
          if (!Object.keys(userData.graphicContributions).includes(song.title)) {
            userData.graphicContributions[song.title] = {}
          }

          userData.graphicContributions[song.title].background = song.graphics.background
        }

        if (song.graphics.jacket && (Array.isArray(song.graphics.jacket.author) ? song.graphics.jacket.author.includes(user) : song.graphics.jacket.author === user)) {
          if (!Object.keys(userData.graphicContributions).includes(song.title)) {
            userData.graphicContributions[song.title] = {}
          }

          userData.graphicContributions[song.title].jacket = song.graphics.jacket
        }

        if (song.graphics.banner && (Array.isArray(song.graphics.banner.author) ? song.graphics.banner.author.includes(user) : song.graphics.banner.author === user)) {
          if (!Object.keys(userData.graphicContributions).includes(song.title)) {
            userData.graphicContributions[song.title] = {}
          }

          userData.graphicContributions[song.title].banner = song.graphics.banner
        }

        if (song.graphics.bga && (Array.isArray(song.graphics.bga.author) ? song.graphics.bga.author.includes(user) : song.graphics.bga.author === user)) {
          if (!Object.keys(userData.graphicContributions).includes(song.title)) {
            userData.graphicContributions[song.title] = {}
          }

          userData.graphicContributions[song.title].bga = song.graphics.bga
        }

        const modes = Object.keys(song.charts)

        modes.forEach((mode) => {
          const styles = Object.keys(song.charts[mode])

          styles.forEach((style) => {
            const styleCharts = song.charts[mode][style]
            
            styleCharts.forEach((chart) => {
              const isAuthor = Array.isArray(chart.author) ? chart.author.includes(user) : chart.author === user

              if (!isAuthor) return
                
              if (!userData.contributedToModes.includes(mode)) {
                userData.contributedToModes.push(mode)
              }

              if (!userData.contributedToModes.includes(mode)) {
                userData.contributedToModes.push(mode)
              }

              const chartInfo = {
                song: song.title,
                mode,
                style,
                chart_data: chart
              }

              userData.chartContributions.push(chartInfo)
            })
          })
        })
      })
    })

    return userData
  }

  const collectUserTags = (userData) => {
    let tagsList = []
    const addTag = (tag) => {
      if (tagsList.includes(tag)) return

      tagsList.push(tag)
    }

    if (serenityDb.user_hall.find(u => u.name === userData.name)) {
      const user = serenityDb.user_hall.find(u => u.name === userData.name)

      if (Array.isArray(user.pretags)) {
        tagsList = user.pretags
      }
    }

    let songsInSerenity = 0

    serenityDb.volumes.forEach((volume) => {
      songsInSerenity += volume.songs.length
    })

    if (userData.contributedToSongs.length === songsInSerenity) {
      addTag('CONTENT_BRINGER')
      addTag('CONSTANT_VISIT')
    }

    const serenityVolumes = serenityDb.volumes.length
    if (userData.contributedToVolumes.length === serenityVolumes) {
      addTag('CONSTANT_VISIT')
    }

    const songsWithGraphicContribution = Object.keys(userData.graphicContributions)
    if (songsWithGraphicContribution.find((song) => Object.keys(userData.graphicContributions[song]).includes('bga'))) {
      addTag('SERENITY_VISION')
    }

    if (userData.songContributions.length > 0) {
      addTag('SERENITY_VOICE')

      const songInVolumes = []
      userData.songContributions.forEach((song) => {

        if (!songInVolumes.includes(song.volume)) {
          songInVolumes.push(song.volume)
        }

        if (Array.isArray(song.author) && song.author.length > 1) {
          addTag('VOICE_TO_SHARE')
        }
      })

      if (songInVolumes.length > 1) {
        addTag('VOICE_RETURN')
      }
    }

    const songsContributed = Object.keys(userData.graphicContributions)
    if (songsContributed.length > 0) {
      addTag('SERENITY_ARTIST')

      if (songsContributed.length > 2) {
        addTag('COLOR_MARK')
      }
    }

    if (userData.chartContributions.length > 0) {
      addTag('CHART_ARTIST')

      userData.contributedToModes.forEach((mode) => {
        const modeChartCount = userData.chartContributions.filter((chart) => chart.mode === mode).length
        let hasHigherChartCount = false
  
        users.forEach((userNameFromList) => {
          if (hasHigherChartCount) return
          if (userNameFromList === userData.name) return
          const userFromList = collectUserData(userNameFromList)
          if (!userFromList.contributedToModes.includes(mode)) return

          const modeChartCountFromUser =  userFromList.chartContributions.filter((chartFromUser) => chartFromUser.mode === mode).length

          if (modeChartCountFromUser > modeChartCount) {
            hasHigherChartCount = true
          }
        })

        if (!hasHigherChartCount) {
          addTag(`${mode.toUpperCase()}_GOD`)
        }
      })
    }

    if (['CHART_ARTIST', 'SERENITY_ARTIST', 'SERENITY_VOICE'].every(e => tagsList.includes(e))) {
      addTag('SUPREME')
    }

    return tagsList
  }

  const users = allAvailableUsers()

  users.forEach((user) => {
    const optionElement = document.createElement('option')
    optionElement.setAttribute('value', user)

    const thisUserTags = collectUserTags(collectUserData(user))
    optionElement.innerText = thisUserTags.length > 0 ? `${user} - ${thisUserTags.length} Tags`: user

    form.appendChild(optionElement)
  })

  const resumeContribution = (user, charts, graphics, songs) => {
    let finalString = ''

    if (1 > charts && 1 > graphics && 1 > songs) {
      return `${user} has contributed to OutFox Serenity in some way that is not creating chart/graphic or songs.`
    }

    if (charts > 0) {
      finalString += charts > 1 ? `${charts} charts` : `${charts} chart`
    }

    if (graphics > 0) {
      if (finalString === '') {
        finalString = graphics > 1 ? `${graphics} graphics` : `${graphics} graphic`
      } else {
        finalString += graphics > 1 ? `, ${graphics} graphics` : `, ${graphics} graphic`
      }
    }

    if (songs > 0) {
      if (finalString === '') {
        finalString = songs > 1 ? `${songs} songs` : `${songs} song`
      } else {
        finalString += songs > 1 ? ` and ${songs} songs` : ` and ${songs} song`
      }
    }

    return finalString
  }

  form.addEventListener('change', (user) => {
    const userName = user.target.value
    if (!userName) return
    const userContributionData = collectUserData(userName)
    const userTags = collectUserTags(userContributionData)

    userNameHeading.innerText = userName
    // Tags
    if (1 > userTags.length) {
      tagsDiv.setAttribute('style', 'display: none;')
    } else {
      tagsRow.innerHTML = ''
      userTags.forEach((tag) => {
        const span = document.createElement('span')
        span.setAttribute('id', tag)

        const a = document.createElement('a')
        a.setAttribute('class', 'gdoc-button__link')
        
        const tagObj = serenityDb.honor_tags.find((t) => t.tag === tag)

        a.innerText = tagObj.name
        span.setAttribute('class', `gdoc-button gdoc-button--large glow-${tagObj.rarity}${tagObj.rarity === 'unique' ? ' glow' : ''}`)

        span.appendChild(a)
        tagsRow.appendChild(span)

        const capitalizeRarity = tagObj.rarity[0].toUpperCase() + tagObj.rarity.slice(1, tagObj.rarity.length)
        tippy(`#${tag}`, {
          content: `${capitalizeRarity}: ${tagObj.explanation}`
        })
      })
      tagsDiv.setAttribute('style', '')
    }

    // Contribution Resume
    let graphicContributions = 0

    Object.keys(userContributionData.graphicContributions).forEach((song) => {
      graphicContributions += Object.keys(userContributionData.graphicContributions[song]).length
    })

    const contributionResume = resumeContribution(userName, userContributionData.chartContributions.length, graphicContributions, userContributionData.songContributions.length)
    userResume.innerText = contributionResume.startsWith(userName) ? contributionResume : `${userName} has created ${contributionResume} for OutFox Serenity`

    // Chart/Song chart count
    const songChartCount = {}
    const modeChartCount = {}

    userContributionData.chartContributions.forEach((chart) => {
      if (!songChartCount[chart.song]) {
        songChartCount[chart.song] = 1
      } else {
        songChartCount[chart.song] += 1
      }

      if (!modeChartCount[chart.mode]) {
        modeChartCount[chart.mode] = 1
      } else {
        modeChartCount[chart.mode] += 1
      }
    })

    const songsWithCharts = Object.keys(songChartCount)
    const songsChartCount = Object.values(songChartCount)
    const songWithMostChart = songsWithCharts[songsChartCount.indexOf(Math.max(...songsChartCount))]

    const modesWithCharts = Object.keys(modeChartCount)
    const modesChartCount = Object.values(modeChartCount)
    const modeWithMostChart = modesWithCharts[modesChartCount.indexOf(Math.max(...modesChartCount))]

    userMostChartsForSong.innerText = `Most Charted Song: ${songWithMostChart ? songWithMostChart + ` (${Math.max(...songsChartCount)} charts)` : 'None'}`
    userMostChartsForMode.innerText = `Most Charted Mode: ${modeWithMostChart ? modeWithMostChart + ` (${Math.max(...modesChartCount)} charts)`: 'None'}`

    // Songs Submission
    if (1 > userContributionData.songContributions.length) {
      userSongSubmissionDiv.setAttribute('style', 'display: none;')
    } else {
      userSongSubmissionDiv.innerHTML = ''
      
      const songSubmissionsHeading2 = document.createElement('h2')
      songSubmissionsHeading2.innerText = 'Song Submissions'

      const table = document.createElement('table')
      table.setAttribute('class', 'tg')

      const thead = document.createElement('thead')
      const theadTr = document.createElement('tr')

      const thSongName = document.createElement('th')
      thSongName.setAttribute('class', 'tg-0pky')
      thSongName.innerText = 'Song Name'

      const thDuration = document.createElement('th')
      thDuration.setAttribute('class', 'tg-0pky')
      thDuration.innerText = 'Duration'

      const thLicense = document.createElement('th')
      thLicense.setAttribute('class', 'tg-0pky')
      thLicense.innerText = 'License'

      theadTr.appendChild(thSongName)
      theadTr.appendChild(thDuration)
      theadTr.appendChild(thLicense)
      thead.appendChild(theadTr)

      const tbody = document.createElement('tbody')
      
      userContributionData.songContributions.forEach((song) => {
        const songTr = document.createElement('tr')
        const songNameTd = document.createElement('td')
        const durationTd = document.createElement('td')
        const licenseTd = document.createElement('td')

        songNameTd.innerText = song.title
        songNameTd.setAttribute('class' , 'tg-0pky')

        durationTd.innerText = song.length
        durationTd.setAttribute('class' , 'tg-0pky')

        licenseTd.innerText = song.license || 'Not Specified'
        licenseTd.setAttribute('class' , 'tg-0pky')

        songTr.appendChild(songNameTd)
        songTr.appendChild(durationTd)
        songTr.appendChild(licenseTd)

        tbody.appendChild(songTr)
      })

      table.appendChild(thead)
      table.appendChild(tbody)

      userSongSubmissionDiv.appendChild(songSubmissionsHeading2)
      userSongSubmissionDiv.appendChild(table)
      userSongSubmissionDiv.setAttribute('style', 'overflow-x:auto;')
    }

    // Graphics Submission
    if (1 > graphicContributions) {
      userGraphicSubmissionDiv.setAttribute('style', 'display: none;')
    } else {
      userGraphicSubmissionDiv.innerHTML = ''
      
      const graphicSubmissionsHeading2 = document.createElement('h2')
      graphicSubmissionsHeading2.innerText = 'Graphic Submissions'

      const table = document.createElement('table')
      table.setAttribute('class', 'tg')

      const thead = document.createElement('thead')
      const theadTr = document.createElement('tr')

      const thGraphicType = document.createElement('th')
      thGraphicType.setAttribute('class', 'tg-0pky')
      thGraphicType.innerText = 'Graphic Type'

      const thSong = document.createElement('th')
      thSong.setAttribute('class', 'tg-0pky')
      thSong.innerText = 'Song'

      const thLicense = document.createElement('th')
      thLicense.setAttribute('class', 'tg-0pky')
      thLicense.innerText = 'License'

      theadTr.appendChild(thGraphicType)
      theadTr.appendChild(thSong)
      theadTr.appendChild(thLicense)
      thead.appendChild(theadTr)

      const tbody = document.createElement('tbody')
      const songsWithGraphicContribution = Object.keys(userContributionData.graphicContributions)
      
      songsWithGraphicContribution.forEach((song) => {
        let licenses = []
        const submittedGraphicTypes = []
        const songGraphics = userContributionData.graphicContributions[song]
        const graphicTypes = Object.keys(songGraphics)

        graphicTypes.forEach((graphic) => {
          if (Array.isArray(songGraphics[graphic].license)) {
            songGraphics[graphic].license.forEach((license) => {
              if (!licenses.includes(license)) {
                licenses.push(license)
              }
            })
          } else {
            if (!licenses.includes(songGraphics[graphic].license)) {
              licenses.push(songGraphics[graphic].license)
            }
          }

          submittedGraphicTypes.push(graphic === 'bga' ? graphic.toUpperCase() : graphic[0].toUpperCase() + graphic.slice(1, graphic.length))
        })

        const graphicSectionTr = document.createElement('tr')
        const graphicTypeTd = document.createElement('td')
        const songTd = document.createElement('td')
        const licenseTd = document.createElement('td')

        graphicTypeTd.innerText = submittedGraphicTypes.join(', ')
        graphicTypeTd.setAttribute('class' , 'tg-0pky')

        songTd.innerText = song
        songTd.setAttribute('class' , 'tg-0pky')

        licenseTd.innerText = licenses.join(', ')
        licenseTd.setAttribute('class' , 'tg-0pky')

        graphicSectionTr.appendChild(graphicTypeTd)
        graphicSectionTr.appendChild(songTd)
        graphicSectionTr.appendChild(licenseTd)

        tbody.appendChild(graphicSectionTr)
      })

      table.appendChild(thead)
      table.appendChild(tbody)

      userGraphicSubmissionDiv.appendChild(graphicSubmissionsHeading2)
      userGraphicSubmissionDiv.appendChild(table)
      userGraphicSubmissionDiv.setAttribute('style', 'overflow-x:auto;')
    }

    // Chart Submission
    if (1 > userContributionData.chartContributions.length) {
      userChartSubmissionDiv.setAttribute('style', 'display: none;')
    } else {
      userChartSubmissionDiv.innerHTML = ''
      
      const chartSubmissionsHeading2 = document.createElement('h2')
      chartSubmissionsHeading2.innerText = 'Chart Submissions'

      const songsChartDiv = document.createElement('div')
      const songsCharted = userContributionData.chartContributions.reduce((accumulator, currentChart) => {
        if (!accumulator.find((e) => e === currentChart.song)) {
          accumulator.push(currentChart.song)
        }
        
        return accumulator
      }, [])

      songsCharted.forEach((songName) => {
        const songHeading = document.createElement('h3')
        songHeading.innerText = songName

        const modesChartedForThisSong = userContributionData.chartContributions.reduce((accumulator, currentChart) => {
          if (currentChart.song === songName && !accumulator.find((e) => e === currentChart.mode)) {
            accumulator.push(currentChart.mode)
          }
          return accumulator
        }, [])

        songsChartDiv.appendChild(songHeading)
        modesChartedForThisSong.forEach((modeName) => {
          const modeHeading = document.createElement('h4')
          modeHeading.innerText = modeName
          songsChartDiv.appendChild(modeHeading)

          const modeChartsSectionDiv = document.createElement('div')
          modeChartsSectionDiv.setAttribute('class', 'mode-charts-section')

          const chartsForThisModeAndSong = userContributionData.chartContributions.filter((chart) => {
            if (chart.song === songName && chart.mode === modeName) {
              return chart
            }
          })

          chartsForThisModeAndSong.forEach((chart) => {
            const chartSectionDiv = document.createElement('div')
            chartSectionDiv.setAttribute('class', `chart-section-${chart.chart_data.difficulty.toLowerCase()}`)
            chartSectionDiv.setAttribute('style', 'margin-bottom: 20px;')

            const chartHeaderSectionDiv = document.createElement('div')
            chartHeaderSectionDiv.setAttribute('class', `chart-header-section-${chart.chart_data.difficulty.toLowerCase()}`)

            const chartHeaderSpan = document.createElement('span')
            chartHeaderSpan.setAttribute('class', 'chart-header-span-section')

            const difficultyNameHeading = document.createElement('h3')
            difficultyNameHeading.setAttribute('style', 'padding-left: 15px; margin-bottom: -25px;')
            difficultyNameHeading.innerText = chart.chart_data.difficulty

            const styleNameHeading = document.createElement('h4')
            styleNameHeading.setAttribute('style', 'padding-left: 15px;')
            styleNameHeading.innerText = chart.style

            chartHeaderSpan.appendChild(difficultyNameHeading)
            chartHeaderSpan.appendChild(styleNameHeading)

            const meterHeading = document.createElement('h1')
            meterHeading.setAttribute('style', 'padding-right: 15px;')
            meterHeading.innerText = chart.chart_data.meter

            chartHeaderSectionDiv.appendChild(chartHeaderSpan)
            chartHeaderSectionDiv.appendChild(meterHeading)

            chartSectionDiv.appendChild(chartHeaderSectionDiv)

            //// - Details

            const chartDetailSectionDiv = document.createElement('div')
            chartDetailSectionDiv.setAttribute('class', 'chart-detail-div-section')

            const chartData = chart.chart_data.chart_info
            const [
              taps, hands, jumps, rolls, 
              holds, lifts, mines, fakes
            ] = 
            [
              chartData.notes, chartData.hands, chartData.jumps, chartData.rolls,
              chartData.holds, chartData.lifts, chartData.mines, chartData.fakes
            ]
            const detailNames = ['TAPS', 'HANDS', 'JUMPS', 'ROLLS', 'HOLDS', 'LIFTS', 'MINES', 'FAKES']
            const detailValues = [taps, hands, jumps, rolls, holds, lifts, mines, fakes]

            for (let i = 0; i < detailNames.length; i++) {
              const chartDetail = document.createElement('div')
              chartDetail.setAttribute('class', 'chart-detail')

              const valueMatters = !!detailValues[i]
              const detailNameHeading = document.createElement('h4')
              detailNameHeading.setAttribute('class', `chart-detail-name${valueMatters ? '' : '-disabled'}`)
              detailNameHeading.innerText = detailNames[i] + ':'

              const detailValueHeading = document.createElement('h4')
              detailValueHeading.setAttribute('class', `chart-detail-value${valueMatters ? '' : '-disabled'}`)
              detailValueHeading.innerText = detailValues[i] || 0

              chartDetail.appendChild(detailNameHeading)
              chartDetail.appendChild(detailValueHeading)
              chartDetailSectionDiv.appendChild(chartDetail)
            }

            chartSectionDiv.appendChild(chartDetailSectionDiv)
            modeChartsSectionDiv.appendChild(chartSectionDiv)
          })

          songsChartDiv.appendChild(modeChartsSectionDiv)
        })
      })

      /*
        song: song.title,
        mode,
        style,
        chart_data: chart
      */

      /*
      const table = document.createElement('table')
      table.setAttribute('class', 'tg')

      const thead = document.createElement('thead')
      const theadTr = document.createElement('tr')

      const thSongName = document.createElement('th')
      thSongName.setAttribute('class', 'tg-0pky')
      thSongName.innerText = 'Song'

      const thMode = document.createElement('th')
      thMode.setAttribute('class', 'tg-0pky')
      thMode.innerText = 'Mode'

      const thStyle = document.createElement('th')
      thStyle.setAttribute('class', 'tg-0pky')
      thStyle.innerText = 'Style'

      const thDifficulty = document.createElement('th')
      thDifficulty.setAttribute('class', 'tg-0lax')
      thDifficulty.innerText = 'Difficulty'

      const thMeter = document.createElement('th')
      thMeter.setAttribute('class', 'tg-0lax')
      thMeter.innerText = 'Meter'

      theadTr.appendChild(thSongName)
      theadTr.appendChild(thMode)
      theadTr.appendChild(thStyle)
      theadTr.appendChild(thDifficulty)
      theadTr.appendChild(thMeter)
      thead.appendChild(theadTr)

      const tbody = document.createElement('tbody')

      userContributionData.chartContributions.forEach((chart) => {
        
        const chartTr = document.createElement('tr')
        const songTd = document.createElement('td')
        const modeTd = document.createElement('td')
        const styleTd = document.createElement('td')
        const difficultyTd = document.createElement('td')
        const meterTd = document.createElement('td')

        songTd.innerText = chart.song
        songTd.setAttribute('class' , 'tg-0pky')

        modeTd.innerText = chart.mode
        modeTd.setAttribute('class' , 'tg-0pky')

        styleTd.innerText = chart.style
        styleTd.setAttribute('class' , 'tg-0pky')

        difficultyTd.innerText = chart.chart_data.difficulty
        difficultyTd.setAttribute('class' , `tg-0pky glow-difficulty-${chart.chart_data.difficulty.toLowerCase()}`)

        meterTd.innerText = chart.chart_data.meter
        meterTd.setAttribute('class' , 'tg-0pky')

        chartTr.appendChild(songTd)
        chartTr.appendChild(modeTd)
        chartTr.appendChild(styleTd)
        chartTr.appendChild(difficultyTd)
        chartTr.appendChild(meterTd)

        tbody.appendChild(chartTr)
      })

      table.appendChild(thead)
      table.appendChild(tbody)

      userChartSubmissionDiv.appendChild(chartSubmissionsHeading2)
      userChartSubmissionDiv.appendChild(table)
      userChartSubmissionDiv.setAttribute('style', 'overflow-x:auto;')
      */

      userChartSubmissionDiv.appendChild(chartSubmissionsHeading2)
      userChartSubmissionDiv.appendChild(songsChartDiv)
      userChartSubmissionDiv.setAttribute('style', '')
    }

    // Socials
    const userHall = serenityDb.user_hall.find((u) => u.name === userName)

    if (userHall && userHall.socials) {
      socialsDiv.innerHTML = ''
      const socials = Object.keys(userHall.socials)

      socials.forEach((social) => {
        const capitalizeSocial = social[0].toUpperCase() + social.slice(1, social.length)
        const span = document.createElement('span')
        span.setAttribute('class', 'gdoc-button gdoc-button--large')

        const a = document.createElement('a')
        a.setAttribute('class', 'gdoc-button__link')
        a.setAttribute('href', userHall.socials[social])
        a.setAttribute('target', '_blank')
        a.innerText = capitalizeSocial

        span.appendChild(a)
        socialsDiv.appendChild(span)
      })
      socialsOuterDiv.setAttribute('style', '')
    } else {
      socialsDiv.innerHTML = ''
      socialsOuterDiv.setAttribute('style', 'display: none;')
    }

    // Copy to Clipboard
    copyData.setAttribute('style', '')
    copyData.addEventListener('click', () => {
      navigator.clipboard.writeText(JSON.stringify(userContributionData))
    })
  })
}

main()
</script>
