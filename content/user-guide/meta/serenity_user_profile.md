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

    return users
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

      userData.songContributions.forEach((song) => {
        if (Array.isArray(song.author) && song.author.length > 1) {
          addTag('VOICE_TO_SHARE')
        }
      })
    }

    if (Object.keys(userData.graphicContributions).length > 0) {
      addTag('SERENITY_ARTIST')
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
    console.log(tagsList)
    return tagsList
  }

  const users = allAvailableUsers()

  users.forEach((user) => {
    const optionElement = document.createElement('option')
    optionElement.setAttribute('value', user)
    optionElement.innerText = user

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

    console.log(userContributionData)

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
        span.setAttribute('class', `gdoc-button gdoc-button--large glow-${tagObj.rarity}`)

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

    userMostChartsForSong.innerText = `Most Charted Song: ${songWithMostChart + ` (${Math.max(...songsChartCount)} charts)` || 'None'}`
    userMostChartsForMode.innerText = `Most Charted Mode: ${modeWithMostChart + ` (${Math.max(...modesChartCount)} charts)`|| 'None'}`

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
  })
}

main()
</script>