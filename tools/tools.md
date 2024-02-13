---
layout: page
title: Tools
description: >
  Open source tools for neuroimaging of epilepsy.
hide_description: true
sitemap: false
permalink: /tools/
---

[comment]: <> get colormap from image here https://img2cmap.fly.dev/ 

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.flip-card {
  background-color: transparent;
  width: 300px;
  height: 200px;
  perspective: 1000px;
}
.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  border-radius: 6px;
}
.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}
.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  border-radius: 6px;
}
.flip-card-front {
  background-color: #bbb;
  color: black;
  border-radius: 6px;
}
.flip-card-back {
  background-color: #afafaf;
  color: white;
  transform: rotateY(180deg);
  border-radius: 6px;
}
table, th, td {
  background: white!important;
  border: 0px;
  border: none!important;
  border-bottom: none;
  border-top: none;
}
</style>
</head>
<body>

<p>
A list of open datasets as well as tools and their source code repositories published on GitHub.
<br/> </p>

<h2> Open epilepsy datasets </h2>

<table>
  <tr>
    <th>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front" style="background-color: rgba(6,104,185,0.13)">
          <h2 style="color:#0668b9">ENIGMA-Epilepsy</h2> 
        </div>
        <div class="flip-card-back" style="background-color: rgba(6,104,185,0.88)">
          <br/>
          <p style="font-size:18px"><a href="https://enigma.ini.usc.edu/ongoing/enigma-epilepsy/" target="_blank" style="color: #ffffff">ENIGMA-Epilepsy</a></p>
          <p style="font-size:14px">
          ENIGMA-Epilepsy is dedicated to improving our understanding of in vivo neuroanatomical disruptions in people with epilepsy compared to healthy individuals
          </p> 
        </div>
      </div>
    </div>
    </th>
    <th>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front" style="background-color: rgba(6,104,185,0.13)">
          <h2 style="color:#0668b9">ENIGMA Toolbox</h2> 
        </div>
        <div class="flip-card-back" style="background-color: rgba(6,104,185,0.88)">
          <br/>
          <p style="font-size:18px"><a href="https://enigma-toolbox.readthedocs.io/" target="_blank" style="color: #ffffff">ENIGMA Toolbox</a></p>
          <p style="font-size:14px">
          A repository for accessing 100+ ENIGMA statistical maps, visualizing cortical and subcortical surface data
          </p> 
        </div>
      </div>
    </div>
    </th>
  </tr>
</table>

<h2> Preprocessing tools </h2>
<table>
  <tr>
    <th>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front" style="background-color: rgba(8,67,145,0.13)">
          <h2 style="color:#084391">Deep Mask</h2> 
        </div>
        <div class="flip-card-back" style="background-color: rgba(8,67,145,0.88)">
          <br/>
          <p style="font-size:18px"><a href="https://github.com/NOEL-MNI/deepMask" target="_blank" style="color: #ffffff">Deep Mask</a></p>
          <p style="font-size:14px">
          Accurate brain segmentation in malformations of cortical development
          </p> 
        </div>
      </div>
    </div>
    </th>
    <th>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front" style="background-color: rgba(8,67,145,0.13)">
          <h2 style="color:#084391">iEEG-recon</h2> 
        </div>
        <div class="flip-card-back" style="background-color: rgba(8,67,145,0.88)">
          <br/>
          <p style="font-size:18px"><a href="https://github.com/penn-cnt/ieeg-recon" target="_blank" style="color: #ffffff">iEEG-recon</a></p>
          <p style="font-size:14px">
          A modular pipeline to reconstruct iEEG electrode locations in MRI images
          </p> 
        </div>
      </div>
    </div>
    </th>
  </tr>
  <tr>
    <th>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front" style="background-color: rgba(8,67,145,0.13)">
          <h2 style="color:#084391">micapipe</h2> 
        </div>
        <div class="flip-card-back" style="background-color: rgba(8,67,145,0.88)">
          <br/>
          <p style="font-size:18px"><a href="https://micapipe.readthedocs.io/en/latest/" target="_blank" style="color: #ffffff">micapipe</a></p>
          <p style="font-size:14px">
           A semi-flexible and robust framework to process MRI images and generate ready to use modality based connectomes
          </p> 
        </div>
      </div>
    </div>
    </th>
  </tr>
</table>


<h2> Postprocessing tools </h2>
<table>
  <tr>
    <th>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front" style="background-color: rgba(101,76,117,0.13)">
          <h2 style="color:#654c75">Deep FCD</h2> 
        </div>
        <div class="flip-card-back" style="background-color: rgba(101,76,117,0.88)">
          <br/>
          <p style="font-size:18px"><a href="https://github.com/NOEL-MNI/deepFCD" target="_blank" style="color: #ffffff">Deep FCD</a></p>
          <p style="font-size:14px">
          Multicenter validated and automated detection of focal cortical dysplasia using deep learning
          </p> 
        </div>
      </div>
    </div>
    </th>
    <th>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front" style="background-color: rgba(101,76,117,0.13)">
          <h2 style="color:#654c75">Automated TLE Lateralization</h2> 
        </div>
        <div class="flip-card-back" style="background-color: rgba(101,76,117,0.88)">
          <br/>
          <p style="font-size:18px"><a href="https://github.com/NOEL-MNI/Automated_TLE_Lateralization" target="_blank" style="color: #ffffff">Automated TLE Lateralization</a></p>
          <p style="font-size:14px">
          An MRI-based machine learning prediction framework to lateralize hippocampal sclerosis in patients
          with temporal lobe epilepsy
          </p> 
        </div>
      </div>
    </div>
    </th>
  </tr>
  
  <tr>
  <th>
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front" style="background-color: rgba(101,76,117,0.13)">
        <h2 style="color:#654c75">z-brains</h2> 
      </div>
      <div class="flip-card-back" style="background-color: rgba(101,76,117,0.88)">
        <br/>
        <p style="font-size:18px"><a href="https://github.com/MICA-MNI/z-brains" target="_blank" style="color: #ffffff">z-brains</a></p>
        <p style="font-size:14px">
        An open software for multimodal lesion mapping in focal epilepsy
        </p> 
      </div>
    </div>
  </div>
  </th>
  <th>
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front" style="background-color: rgba(101,76,117,0.13)">
        <h2 style="color:#654c75">MELD Classifier</h2> 
      </div>
      <div class="flip-card-back" style="background-color: rgba(101,76,117,0.88)">
        <br/>
        <p style="font-size:18px"><a href="https://github.com/MELDProject/meld_classifier" target="_blank" style="color: #ffffff">MELD Classifier</a></p>
        <p style="font-size:14px">
        A neural network lesion classifier for the MELD project
        </p> 
      </div>
    </div>
  </div>
  </th>
</tr>

  <tr>
  <th>
  <div class="flip-card">
    <div class="flip-card-inner">
      <div class="flip-card-front" style="background-color: rgba(101,76,117,0.13)">
        <h2 style="color:#654c75">BrainStat</h2> 
      </div>
      <div class="flip-card-back" style="background-color: rgba(101,76,117,0.88)">
        <br/>
        <p style="font-size:18px"><a href="https://github.com/MICA-MNI/BrainStat" target="_blank" style="color: #ffffff">BrainStat</a></p>
        <p style="font-size:14px">
        A toolbox for statistical analysis of neuroimaging data
        </p> 
      </div>
    </div>
  </div>
  </th> 
</tr>
</table>

</body>
</html>
