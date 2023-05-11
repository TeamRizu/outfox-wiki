---
title: Serenity Volumes Resume
weight: 5
geekdocAlign: center
---

<style>
.tg {
  border-collapse:collapse;
  border-spacing:0;
}

.tg td {
  border-color: #019d83;
  border-style:solid;
  border-width:1px;
  font-family:Arial, sans-serif;
  font-size:14px;
  overflow: hidden;
  padding:10px 5px;
  word-break:normal;
}

.tg th {
  border-color: #019d83;
  border-style:solid;
  border-width: 2px;
  font-family:Arial, sans-serif;
  font-size:14px;
  font-weight:normal;
  overflow:hidden;
  padding:10px 5px;
  word-break:normal;
  color: white;
  background-color: #00261f;
}
.tg .tg-0pky {
  border-color: #019d83;
  text-align:left;
  vertical-align:top
}
.tg .tg-0lax {
  text-align:left;
  vertical-align:top
}
/* Style the button that is used to open and close the collapsible content */
.collapsible {
  border: solid;
  border-radius: 2px;
  border-color: #019b81;
  background-color: #003129;
  display: flex;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  text-align: center;
  justify-content: center;
  margin-bottom: 20px;
}

.select-volume {
  display: flex;
  flex-direction: row;
  justify-content: center;
  flex-wrap: wrap;
}

/* Style the collapsible content. Note: hidden by default */
.content {
  padding: 0 18px;
  display: none;
  justify-content: center;
  
}

.outer-volume {
  background-color: #00332a;
  width: 95%;
  margin-bottom: 20px;
}

.volume-jacket {
  padding: 10px;
  background-color: #019b81;
  max-width: 276px;
  max-height: 276px;
}

.showcase-image {
  padding: 2px;
  margin-top: 30px;
  background-color: #019b81;
}

.song-details {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}

.chartlist-div {
  display: flex;
  justify-content: center;
  padding: 10px;
  flex-direction: column;
  align-items: center;
}

.chartlist-expand-button {
  background-color: #004237;
  width: 90%;
}

.mode-content {
  background-color: #004237;
  flex-direction: column;
  position: relative;
  align-items: center;
  justify-content: center;
  border: 3px solid;
  border-width: 2px;
  border-color: #01a085;
  width: 90%;
}

.mode-content:before {
  content: '';
  width: 20px;
	height: 20px;
	background: #00332a;
	border: 2px solid #01a085;
	transform: rotate(45deg);
	position: absolute;
	border-top: 0;
	border-left: 0;
	border-bottom: 0;
	top: -12px;
	left: -13px;
}

.graphic-button {
  margin-left: 10px;
  margin-right: 10px;
  margin-top: 0.5rem;
  margin-bottom: 0.5rem;
  padding-right: 5px;
  padding-left: 5px;
  font-size: 1.25rem;
  display: inline-block;
  border: solid;
  border-color: #01dbb6;
  cursor: pointer;
  background-color: #002e27;
  color: white;
  height: 30px;
}

.chart-section-novice {
  display: flex;
  width: 250px;
  border: 1px solid #0c91d5;
  background-color: #043049;
  flex-direction: column;
  margin-right: 20px;
  margin-left: 20px;
}

.chart-section-easy {
  display: flex;
  width: 250px;
  border: 1px solid  #00d5a5;
  background-color: #004636;
  flex-direction: column;
  margin-right: 20px;
  margin-left: 20px;
}

.chart-section-medium {
  display: flex;
  width: 250px;
  border: 1px solid #d57100;
  background-color: #492500;
  flex-direction: column;
  margin-right: 20px;
  margin-left: 20px;
}

.chart-section-hard {
  display: flex;
  width: 250px;
  border: 1px solid #d50721;
  background-color: #47020b;
  flex-direction: column;
  margin-right: 20px;
  margin-left: 20px;
}

.chart-section-expert {
  display: flex;
  width: 250px;
  border: 1px solid #9406d5;
  background-color: #300249;
  flex-direction: column;
  margin-right: 20px;
  margin-left: 20px;
}

.chart-section-edit {
  display: flex;
  width: 250px;
  border: 1px solid #7f86b9;
  background-color: #2a2c3d;
  flex-direction: column;
  margin-right: 20px;
  margin-left: 20px;
}

.chart-header-section-novice {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #094c6d;
}

.chart-header-section-easy {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #046557;
}

.chart-header-section-medium {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #57401a;
}

.chart-header-section-hard {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #541926;
}

.chart-header-section-expert {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #3b186d;
}

.chart-header-section-edit {
  display: flex;
  height: 30%;
  flex-direction: row;
  justify-content: space-between;
  border: 2px solid #33475f;
}

.chart-header-span-section {
  display: flex;
  flex-basis: 70%;
  flex-direction: column; 
  align-items: flex-start;
}

.chart-detail-div-section {
  display: flex;
  flex-direction: column;
  max-height: 273px;
  flex-wrap: wrap;
  padding-right: 20px;
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
</style>

<h1 id="javascriptwarn">This page requires JavaScript to work.</h1>
<label for="volumeSelect">Select Volume:</label>

<select name="volumes" id="volumeSelect" style="min-width: 260px; width: 30%; padding: 16px 20px; border-color: #019b81; border: solid; border-width: 2px; border-radius: 8px; background-color: #003028;">
    <option value="">Select an option</option>
</select>

<div id="contentHolder">
</div>

_Written and Maintained by Moru Zerinho6_

<script>
const warn = document.getElementById('javascriptwarn')

warn.remove()
const volumeSelect = document.getElementById('volumeSelect')
const contentHolder = document.getElementById('contentHolder')
const dbURL = document.documentURI.split('meta')[0] + 'meta/serenity_db.json'

const authorsToString = (authors) => {
  return Array.isArray(authors) ? authors.join(', ') : authors
}

const properGraphicTypeString = (graphicType) => {
  if (graphicType.toLowerCase() === 'bga') {
    return 'BGA'
  }

  if (graphicType.toLowerCase() === 'banner') {
    return 'Banner'
  }

  if (graphicType.toLowerCase() === 'background') {
    return 'Background'
  }

  return 'Jacket'
}

const main = async () => {
  const req = await fetch(dbURL)

  if (req.status !== 200) {
    console.error('Failed to get serenity data. Retrying.')
    main()
  }

  const serenityDb = await req.json()

  if (!serenityDb) {
    alert(
      'Could not load serenity data, try reloading the page or contact the OutFox Team.'
    )
    return
  }

  const volumeSelected = (volumeIndex) => {
    contentHolder.innerHTML = ''

    const volume = serenityDb.volumes[volumeIndex]
    const volumeDiv = document.createElement('div')
    const volumeTitleHeading = document.createElement('h1')

    volumeTitleHeading.innerText = volume.title

    const volumeIntroDiv = document.createElement('div')
    const volumeJacketImg = document.createElement('img')

    volumeJacketImg.setAttribute('class', 'volume-jacket')
    volumeJacketImg.src = volume.graphics.jacket.link

    const volumeDescriptionDiv = document.createElement('div')
    const volumeDescriptionP = document.createElement('p')

    volumeDescriptionP.innerHTML = volume.description

    volumeDescriptionDiv.appendChild(volumeDescriptionP)
    volumeIntroDiv.appendChild(volumeJacketImg)
    volumeIntroDiv.appendChild(volumeDescriptionDiv)

    const volumeSongsHeading = document.createElement('h2')
    volumeSongsHeading.innerText = 'Songs'

    volumeDiv.appendChild(volumeTitleHeading)
    volumeDiv.appendChild(volumeIntroDiv)
    volumeDiv.appendChild(volumeSongsHeading)

    volume.songs.forEach((song, songIndex) => {
      const songExpandButton = document.createElement('button')
      songExpandButton.type = 'button'
      songExpandButton.setAttribute('class', 'collapsible')
      songExpandButton.innerHTML = song.title

      const songResumeDiv = document.createElement('div')
      songResumeDiv.setAttribute('class', 'content')

      const outerVolumeDiv = document.createElement('div')
      outerVolumeDiv.setAttribute('class', 'outer-volume')

      const showcaseDiv = document.createElement('div')
      showcaseDiv.id = `showcaseDiv-${songIndex}`

      const songShowcaseImage = document.createElement('img')
      songShowcaseImage.setAttribute('class', 'showcase-image')
      songShowcaseImage.src = song.graphics?.background?.link
        ? song.graphics.background.link
        : volume.graphics.background.link

      const songGraphicTypes = song.graphics ? Object.keys(song.graphics) : []
      const attributionP = document.createElement('p')
      attributionP.setAttribute('style', 'padding: 3px; color: white;')
      attributionP.setAttribute('id', `graphicAttribution-${songIndex}`)

      if (songGraphicTypes.includes('background')) {
        attributionP.innerText = `Background by ${authorsToString(
          song.graphics.background.author
        )} licensed under ${authorsToString(song.graphics.background.license) || 'a not specified license'}`
      } else {
        attributionP.innerText = `This song has no graphics yet, it is for now falling under background fallback graphic by ${volume.graphics.background.author} licensed under ${volume.graphics.background.license}.`
      }

      showcaseDiv.appendChild(songShowcaseImage)
      outerVolumeDiv.appendChild(attributionP)

      const graphicTypesDiv = document.createElement('div')
      graphicTypesDiv.setAttribute('style', 'padding-bottom: 5px;')

      songGraphicTypes.forEach((graphicType) => {
        if (!song.graphics[graphicType]) return

        const graphicSpan = document.createElement('span')
        graphicSpan.setAttribute('class', 'graphic-button')
        graphicSpan.setAttribute('id', graphicType)

        graphicSpan.onclick = (event) => {
          const showcaseDiv = document.getElementById(`showcaseDiv-${songIndex}`)
          const attributionText = document.getElementById(`graphicAttribution-${songIndex}`)
          console.log(event.target)
          const type = event.target.tagName.toLowerCase() === 'span' ? event.target.id : event.target.parentElement.id
          // It's possible to hit either the span or a element.

          showcaseDiv.innerHTML = ''

          if (
            song.graphics[type].link &&
            song.graphics[type].link.includes('.mp4')
          ) {
            const videoElem = document.createElement('video')
            const sourceElem = document.createElement('source')

            sourceElem.src = song.graphics[type].link

            videoElem.setAttribute('autoplay', '')
            videoElem.setAttribute('class', 'showcase-image')
            videoElem.appendChild(sourceElem)
            showcaseDiv.appendChild(videoElem)
          } else {
            const imgElem = document.createElement('img')
            imgElem.setAttribute('class', 'showcase-image')
            imgElem.src = song.graphics[type].link

            showcaseDiv.appendChild(imgElem)
          }

          attributionText.innerText = `${properGraphicTypeString(
            type
          )} by ${authorsToString(
            song.graphics[type].author
          )} under ${authorsToString(song.graphics[type].license)}`
        }

        const graphicAnchor = document.createElement('a')
        graphicAnchor.setAttribute('class', 'gdoc-button__link')
        graphicAnchor.innerText = properGraphicTypeString(graphicType)

        graphicSpan.appendChild(graphicAnchor)
        graphicTypesDiv.appendChild(graphicSpan)
      })

      /*
       * This is where I would put my song preview
       *
       *
       * If I had any.
       */

      const songDetailsDiv = document.createElement('div')
      songDetailsDiv.id = 'details'
      songDetailsDiv.setAttribute('class', 'song-details')

      const authorDetailDiv = document.createElement('div')
      const authorHeading = document.createElement('h3')
      const authorNameP = document.createElement('p')
      authorDetailDiv.setAttribute('style', 'padding-left: 10px; padding-right: 10px; color: white;')
      authorHeading.innerText = 'Author'
      authorNameP.innerText = authorsToString(song.music_authors)
      authorDetailDiv.appendChild(authorHeading)
      authorDetailDiv.appendChild(authorNameP)

      const bpmDetailDiv = document.createElement('div')
      const bpmHeading = document.createElement('h3')
      const bpmCountP = document.createElement('p')
      bpmDetailDiv.setAttribute('style', 'padding-left: 10px; padding-right: 10px; color: white;')
      bpmHeading.innerText = 'BPM'
      bpmCountP.innerText = Array.isArray(song.bpm) ? song.bpm.join('-') : song.bpm
      bpmDetailDiv.appendChild(bpmHeading)
      bpmDetailDiv.appendChild(bpmCountP)

      const chartsDetailDiv = document.createElement('div')
      const chartsHeading = document.createElement('h3')
      const chartsCountP = document.createElement('p')
      chartsDetailDiv.setAttribute('style', 'padding-left: 10px; padding-right: 10px; color: white;')
      chartsHeading.innerText = 'Chart Count'

      let chartCount = 0
      const chartModes = Object.keys(song.charts)

      if (chartModes.length > 0) {
        chartModes.forEach((modeName) => {
          const modeStyles = Object.keys(song.charts[modeName])
          modeStyles.forEach((styleName) => {
            chartCount += song.charts[modeName][styleName].length
          })
        })

        chartsCountP.innerText = chartCount
      } else {
        chartsCountP.innerText = 'No charts yet.'
      }

      chartsDetailDiv.appendChild(chartsHeading)
      chartsDetailDiv.appendChild(chartsCountP)

      const licenseDetailDiv = document.createElement('div')
      const licenseHeading = document.createElement('h3')
      const licenseP = document.createElement('p')
      licenseHeading.innerText = 'License'
      licenseDetailDiv.setAttribute('style', 'padding-left: 10px; padding-right: 10px; color: white;')
      licenseP.innerText = authorsToString(song.license || 'Not specified')
      licenseDetailDiv.appendChild(licenseHeading)
      licenseDetailDiv.appendChild(licenseP)

      const genreDetailDiv = document.createElement('div')
      const genreHeading = document.createElement('h3')
      const genreP = document.createElement('p')
      genreHeading.innerText = 'Genre'
      genreDetailDiv.setAttribute('style', 'padding-left: 10px; padding-right: 10px; color: white;')
      genreP.innerText = song.genre
      genreDetailDiv.appendChild(genreHeading)
      genreDetailDiv.appendChild(genreP)

      const lengthDetailDiv = document.createElement('div')
      const lengthHeading = document.createElement('h3')
      const lengthP = document.createElement('p')
      lengthDetailDiv.setAttribute('style', 'padding-left: 10px; padding-right: 10px; color: white;')
      lengthHeading.innerText = 'Length'
      lengthP.innerText = song.length
      lengthDetailDiv.appendChild(lengthHeading)
      lengthDetailDiv.appendChild(lengthP)

      songDetailsDiv.appendChild(authorDetailDiv)
      songDetailsDiv.appendChild(bpmDetailDiv)
      songDetailsDiv.appendChild(chartsDetailDiv)
      songDetailsDiv.appendChild(licenseDetailDiv)
      songDetailsDiv.appendChild(licenseDetailDiv)
      songDetailsDiv.appendChild(genreDetailDiv)
      songDetailsDiv.appendChild(lengthDetailDiv)

      outerVolumeDiv.appendChild(showcaseDiv)
      outerVolumeDiv.appendChild(attributionP)
      outerVolumeDiv.appendChild(graphicTypesDiv)
      outerVolumeDiv.appendChild(songDetailsDiv)

      if (chartModes.length > 0) {
        const chartListHeading = document.createElement('h3')
        chartListHeading.setAttribute('style', 'color: white;')
        chartListHeading.innerText = 'Charts List'

        const clickExpandP = document.createElement('p')
        clickExpandP.setAttribute('style', 'color: white;')
        clickExpandP.innerText = 'Click to Expand'

        outerVolumeDiv.appendChild(chartListHeading)
        outerVolumeDiv.appendChild(clickExpandP)

        chartModes.forEach((modeName) => {
          const chartListDiv = document.createElement('div')
          chartListDiv.setAttribute('class', 'chartlist-div')

          const modeButton = document.createElement('button')
          modeButton.type = 'button'
          modeButton.setAttribute(
            'class',
            'collapsible chartlist-expand-button'
          )
          modeButton.innerText = modeName

          chartListDiv.appendChild(modeButton)
          const modeContentDiv = document.createElement('div')
          modeContentDiv.setAttribute('class', 'content mode-content')
          const modeStyles = Object.keys(song.charts[modeName])

          modeStyles.forEach((styleName) => {
            const styleHeading = document.createElement('h3')
            styleHeading.setAttribute('style', 'color: white;')
            styleHeading.innerText = styleName

            modeContentDiv.appendChild(styleHeading)

            const styleContent = document.createElement('div')
            styleContent.setAttribute('style', 'display: flex; flex-wrap: wrap; justify-content: space-around;')
            modeContentDiv.appendChild(styleContent)

            song.charts[modeName][styleName].forEach((chart) => {
              const chartSectionDiv = document.createElement('div')
              chartSectionDiv.setAttribute('class', `chart-section-${chart.difficulty.toLowerCase()}`)
              chartSectionDiv.setAttribute('style', 'margin-bottom: 20px;')

              const chartHeaderSectionDiv = document.createElement('div')
              chartHeaderSectionDiv.setAttribute('class', `chart-header-section-${chart.difficulty.toLowerCase()}`)

              const chartHeaderSpan = document.createElement('span')
              chartHeaderSpan.setAttribute('class', 'chart-header-span-section')

              const difficultyNameHeading = document.createElement('h3')
              difficultyNameHeading.setAttribute('style', 'padding-left: 15px; margin-bottom: -25px;')
              difficultyNameHeading.innerText = chart.difficulty

              const authorNameHeading = document.createElement('h4')
              authorNameHeading.setAttribute('style', 'padding-left: 15px;')
              authorNameHeading.innerText = chart.author

              chartHeaderSpan.appendChild(difficultyNameHeading)
              chartHeaderSpan.appendChild(authorNameHeading)

              const meterHeading = document.createElement('h1')
              meterHeading.setAttribute('style', 'padding-right: 15px;')
              meterHeading.innerText = chart.meter

              chartHeaderSectionDiv.appendChild(chartHeaderSpan)
              chartHeaderSectionDiv.appendChild(meterHeading)

              chartSectionDiv.appendChild(chartHeaderSectionDiv)

              //// - Details

              const chartDetailSectionDiv = document.createElement('div')
              chartDetailSectionDiv.setAttribute('class', 'chart-detail-div-section')

              const chartData = chart.chart_info
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
                chartDetail.setAttribute('style', 'display: flex')

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
              styleContent.appendChild(chartSectionDiv)
            })

            // REPLACE THIS
            /*
            const tableDiv = document.createElement('div') 
            tableDiv.setAttribute('style', 'overflow-x: auto; max-width: 90%;')

            const tableElem = document.createElement('table')
            tableElem.setAttribute('class', 'tg')

            const thead = document.createElement('thead')
            const tr = document.createElement('tr')
            const authorTh = document.createElement('th')
            const difficultyTh = document.createElement('th')
            const meterTh = document.createElement('th')
            authorTh.innerText = 'Author'
            difficultyTh.innerText = 'Difficulty'
            meterTh.innerText = 'Meter'
            tr.appendChild(authorTh)
            tr.appendChild(difficultyTh)
            tr.appendChild(meterTh)
            thead.appendChild(tr)

            const tbody = document.createElement('tbody')

            song.charts[modeName][styleName].forEach((chart) => {
              const tr = document.createElement('tr')
              const authorTh = document.createElement('th')
              const difficultyTh = document.createElement('th')
              const meterTh = document.createElement('th')

              authorTh.setAttribute('class', 'tg-0pky')
              authorTh.innerText = authorsToString(chart.author)

              difficultyTh.setAttribute('class', 'tg-0pky')
              difficultyTh.innerText = chart.difficulty

              meterTh.setAttribute('class', 'tg-0pky')
              meterTh.innerText = chart.meter

              tr.appendChild(authorTh)
              tr.appendChild(difficultyTh)
              tr.appendChild(meterTh)
              tbody.appendChild(tr)
            })

            tableElem.appendChild(thead)
            tableElem.appendChild(tbody)
            tableDiv.appendChild(tableElem)
            */
            
            // modeContentDiv.appendChild(tableDiv)
          })

          chartListDiv.appendChild(modeContentDiv)
          outerVolumeDiv.appendChild(chartListDiv)
        })
      }

      songResumeDiv.appendChild(outerVolumeDiv)
      volumeDiv.appendChild(songExpandButton)
      volumeDiv.appendChild(songResumeDiv)
      contentHolder.appendChild(volumeDiv)
    })

    // Make expand buttons work
    const coll = document.getElementsByClassName('collapsible')
    let i

    for (i = 0; i < coll.length; i++) {
      coll[i].addEventListener('click', function () {
        this.classList.toggle('active')
        const content =
          this.parentNode.tagName === 'P'
            ? this.parentNode.nextElementSibling
            : this.nextElementSibling // The button is inside a <p> for some reason so we have to escape it.

        if (content.style.display === 'flex') {
          content.style.display = 'none'
        } else {
          content.style.display = 'flex'
        }
      })
    }
  }

  serenityDb.volumes.forEach((volume, i) => {
    const volumeOption = document.createElement('option')
    volumeOption.innerText = volume.title
    volumeOption.value = i

    volumeSelect.appendChild(volumeOption)
  })

  volumeSelect.addEventListener('change', (event) => {
    volumeSelected(Number(event.target.value))
  })
}

main()

</script>
