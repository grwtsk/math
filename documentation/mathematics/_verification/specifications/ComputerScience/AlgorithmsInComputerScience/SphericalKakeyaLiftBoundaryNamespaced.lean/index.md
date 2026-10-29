# Verification target: Spherical Kakeya Lift Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15712ec73c7da2bf44a4f95c367dbd67a0c86ff6",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15712ec73c7da2bf44a4f95c367dbd67a0c86ff6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.SpectralTripleToposBoundary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SphericalLiftResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalliftresidue.md) | 19 | `declaration-track:ba9a6a2e70659f7c660cb45fe6c7775e90b3949c40aa68fa57d224282dc08365` |
| 2 | `def` | [SphericalLiftResidue.token](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalliftresidue-token.md) | 28 | `declaration-track:5e790e68395751e75832263f8febc00660bc0f584f5060aea0961a885598cb7d` |
| 3 | `inductive` | [VerticalSign](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/verticalsign.md) | 41 | `declaration-track:423e67b91ec2ad95b6bfc417d863f2eb240b0c76e451f6ed4943fcc243486a52` |
| 4 | `def` | [VerticalSign.toInt](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/verticalsign-toint.md) | 47 | `declaration-track:0e9dcf08d4ea20bb59eb496df607f30494c1b01019617e2562c1ca3fe65d5089` |
| 5 | `def` | [verticalSignOfNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/verticalsignofnumerator.md) | 52 | `declaration-track:dc04c5159979a245682906839463ad28fedf6be17c7aa58ff3891863d21b1875` |
| 6 | `def` | [intAbsNat](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/intabsnat.md) | 60 | `declaration-track:40474b3a2e83451981006f159a30cc418a44f3c5883f3332525af41e473da345` |
| 7 | `inductive` | [LongitudeSource](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/longitudesource.md) | 66 | `declaration-track:d3a0dfbd2b5f64f24d35753833712203136505ead96147fb9ee0f6b18ea54f8d` |
| 8 | `structure` | [SphericalLongitude](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericallongitude.md) | 71 | `declaration-track:0ce4bb7e94adb50c576eef897cdf970caea8dcb6d12262fe51dbe2c94f3e8b53` |
| 9 | `structure` | [SignedTorsionHeight](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/signedtorsionheight-source-edition-2.md) | 76 | `declaration-track:22c2aaa4f73f4ce4308d9ca91a628721684b6c6bf42bf63044d31c081a8e9382` |
| 10 | `structure` | [FiniteEmlSphericalSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/finiteemlsphericalsite.md) | 82 | `declaration-track:165afaf59da85b19048d2e59f75e191008a0d132bf3b3a5781807cad2c3f65e6` |
| 11 | `def` | [branchInUnitInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/branchinunitinterval.md) | 98 | `declaration-track:297d605b5fb9693eed16e74ec6ea55d8c619a7835dc44bc73cb182847b72eca8` |
| 12 | `def` | [torsionHeightDenominator](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/torsionheightdenominator.md) | 102 | `declaration-track:1902f553180516096019f299b5206f5bd90db05de7da627065ff0928605f2bb7` |
| 13 | `def` | [torsionHeightNumerator](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/torsionheightnumerator.md) | 107 | `declaration-track:9454ec9f33dd245840cdbc0b16abfea6bb2a74883d7e3bb0f76c1307e669edf0` |
| 14 | `def` | [signedTorsionHeight](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/signedtorsionheight.md) | 111 | `declaration-track:0b79e52c6d78f1a0dbb1c90f98d3a130b316549f4a43bd3b24dbfbb9c14d1515` |
| 15 | `def` | [siteAdmissibleForSphericalLift](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/siteadmissibleforsphericallift.md) | 118 | `declaration-track:083724a4cbca8755e2e8ed8ad3ef98fbd31c7276142b761d3cbcab0e53aab764` |
| 16 | `def` | [longitudeOfSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/longitudeofsite.md) | 126 | `declaration-track:c3a5e99f4d6c72b826e3396e3cce45fb37fca19769e3333e923fe9c6f7369e58` |
| 17 | `structure` | [SymbolicSphericalPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/symbolicsphericalpoint-source-edition-2.md) | 136 | `declaration-track:e341ffaa8d038aa76ca11ca8e9e75e342b70cc4da502701b03dd3bf8480cdb11` |
| 18 | `def` | [symbolicSphericalPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/symbolicsphericalpoint.md) | 146 | `declaration-track:5a2ff19be3e0bdfb9e5b8f9590557a52b43209098351611e159704d7af4a6d71` |
| 19 | `structure` | [SphericalLiftedSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalliftedsite.md) | 157 | `declaration-track:af5ac6b772821f0c720e2ccb084b2b27f12f9f5b08e0330f40446df82c4467e5` |
| 20 | `def` | [siteLiftResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/siteliftresidues.md) | 166 | `declaration-track:a3a1a8f23d5c08d3ab503a3c157a3ea04a281865cbe6c8fc6585e00c37a300af` |
| 21 | `def` | [sphericalLiftSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalliftsite.md) | 187 | `declaration-track:a2ba614d271ceeb9f42a890e73af0cdcb6e572f31b231b8ed3d817db6c1e0bd9` |
| 22 | `def` | [liftAllFiniteSites](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/liftallfinitesites.md) | 197 | `declaration-track:bf2d86ac59f418c78a475092086db28b5775cdf5ecec33cb4d81c398a9a56e52` |
| 23 | `def` | [allSitesLiftedBeforeMedoid](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/allsitesliftedbeforemedoid.md) | 202 | `declaration-track:c98aaf4785b17d7c72bb0c8dc3331e690424f57af591a163df4dc3e04a02ae5f` |
| 24 | `def` | [verticalSignDistance](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/verticalsigndistance.md) | 208 | `declaration-track:a264ca052d26cddf7c0d0a3b91195b59d51e6c2d303d7a52f19c3564d4232f2f` |
| 25 | `def` | [natAbsDiff](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/natabsdiff.md) | 218 | `declaration-track:f3aea8c9c6d69217ba8cd382aeda1839ff35f88422792378b91d6777ef310b57` |
| 26 | `def` | [finiteSphericalDistanceSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/finitesphericaldistancesquared.md) | 224 | `declaration-track:ee2f90876b18b94398b12007e17cfaa83529b3ed6b1b063e7517a560fd8f0c34` |
| 27 | `def` | [sphericalMedoidObjective](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalmedoidobjective.md) | 233 | `declaration-track:6b4fd5230dc760538a9305592e5007beb2b37ac9ed4347cea9d313ab9108086f` |
| 28 | `def` | [sphericalMedoidBetter](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalmedoidbetter.md) | 240 | `declaration-track:ca4f9a1a27e98184664d10a2df3269e37b6c6a17d17ce887943f7b0d6429690f` |
| 29 | `def` | [chooseSphericalMedoid](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/choosesphericalmedoid.md) | 252 | `declaration-track:3fa66eb2d35cca4c24a321397253450ed23904611fcde776833cc421dc5983ec` |
| 30 | `def` | [sphericalMedoidOfLiftedSites](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalmedoidofliftedsites.md) | 263 | `declaration-track:0eb472dfcc6eb249401c71bef7352b7d6e197dc1fdbca3f127d97fa198cf8a38` |
| 31 | `structure` | [SphericalMedoidSelection](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalmedoidselection-source-edition-2.md) | 270 | `declaration-track:c69969ed8c9a8ffd1922095d11990bde9d4de4b59f14891a75b1057440fc5c76` |
| 32 | `def` | [sphericalMedoidSelection](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalmedoidselection.md) | 279 | `declaration-track:5a544d93afe4b57e607449970f31ef5ac187e8ad2b6516c60e107057b1691701` |
| 33 | `def` | [heightExceedsThreshold](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/heightexceedsthreshold.md) | 293 | `declaration-track:c23f34203ae0d666c0ea13302810713a89d2ba0a646b177ae9f771cc0ddb5f1e` |
| 34 | `def` | [residueDecreases](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/residuedecreases.md) | 300 | `declaration-track:ebdcb587f75e99fd1c05791eb60cea8f4bee28c80622a77c544a7d56df742b5a` |
| 35 | `def` | [boundaryBitFromLiftedSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/boundarybitfromliftedsite.md) | 303 | `declaration-track:db3804b8919fca4a8db9a172ccc437abad8dfb90d96587d2de73ed80e246de64` |
| 36 | `structure` | [TangentScatterDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/tangentscatterdirection.md) | 316 | `declaration-track:20414e5443aa4e0253979c810945b067b0aa1e96bc06a5e622a76e99e1625d6e` |
| 37 | `def` | [tangentScatterDirection](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/tangentscatterdirection-source-edition-2.md) | 323 | `declaration-track:c073ed893643b784176a91497a1a3fbcc05bd83c2e4ff766c2af3f471dec1851` |
| 38 | `structure` | [KakeyaTubeGrain3D](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/kakeyatubegrain3d.md) | 331 | `declaration-track:10f16030fdb1a99c126c1b4881c1ef6949f96287de9cb3e8427e86d9a6ab06cf` |
| 39 | `def` | [kakeyaTubeGrainAtLiftedSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/kakeyatubegrainatliftedsite.md) | 342 | `declaration-track:44a2c21e5f83590e71b174eb17b19c2e67852065e6bc498636b431ea424254c8` |
| 40 | `def` | [weightedVerticalSign](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/weightedverticalsign.md) | 355 | `declaration-track:d5e41e9d38b088706e822c25a3f65e0c0e33883638f417774aa9f72ba26244b5` |
| 41 | `def` | [signedFrequencyCollapse](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/signedfrequencycollapse.md) | 359 | `declaration-track:23ffb2620a207c4fc62f9c2419905b72f487201a734c6df77c10ee74e1d89c15` |
| 42 | `def` | [totalWeight](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/totalweight.md) | 364 | `declaration-track:9ca52266baeb59a15701d7869cbc2a2e53f0534480b4ddf3edb5a8b19e8a5b10` |
| 43 | `structure` | [NormalizedFrequency](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/normalizedfrequency-source-edition-2.md) | 369 | `declaration-track:7534040d4845cc7cdd0f504d19738c30efca8a2c6a33c5bb0700862a2b0ebac5` |
| 44 | `def` | [normalizedFrequency](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/normalizedfrequency.md) | 374 | `declaration-track:5135db29d11dba07c2083d7bf410957db198d8e3f96a8ec3e947f9d83a3f7723` |
| 45 | `def` | [medoidFrequencySign](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/medoidfrequencysign.md) | 380 | `declaration-track:d9300dbb7ff707a25a8b4ce23e419e8762c72c41a3fe5855a809c4edc6518f74` |
| 46 | `structure` | [FiniteSphericalSpectralOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/finitesphericalspectraloperator-source-edition-2.md) | 387 | `declaration-track:e9de46a80ca77f7c884b02578e3a2f4cf7848721a12703f564debd0e176ffacd` |
| 47 | `def` | [finiteSphericalSpectralOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/finitesphericalspectraloperator.md) | 401 | `declaration-track:05c62d159cd438e262d894aa45a42ef96662399b493443ff8e2d37f2363fc62c` |
| 48 | `structure` | [SphericalKakeyaLiftSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/sphericalkakeyaliftsurface.md) | 416 | `declaration-track:46a794359d012639718a9764332e12ef9b3524735906621abd4c76e4b7897dac` |
| 49 | `def` | [buildSphericalKakeyaLiftSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/buildsphericalkakeyaliftsurface.md) | 428 | `declaration-track:c31db46c9cb224cf11888cf86a75efb3cb183ef10a25860e4ddbde9dc862cd54` |
| 50 | `def` | [positiveSphericalSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/positivesphericalsite.md) | 444 | `declaration-track:737ef9b98b499be5b321ad75964d29e1894ec146ae319ee347c51794a0ab3e55` |
| 51 | `def` | [negativeSphericalSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/negativesphericalsite.md) | 459 | `declaration-track:a181886f72ca161223f06524136b55103dd73e259de226d042a8da23f187028c` |
| 52 | `def` | [balancedSphericalSite](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/balancedsphericalsite.md) | 474 | `declaration-track:338615fcbec40e9fd023c2005b89d9244144fd6e40ced0b4a2682e9354ca55f7` |
| 53 | `def` | [sampleSphericalSites](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/samplesphericalsites.md) | 489 | `declaration-track:72a3280c9fa1c65011da915c7628bfff3ddc28307500cfd888b898612ff86656` |
| 54 | `def` | [sampleSphericalLiftSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/samplesphericalliftsurface.md) | 494 | `declaration-track:fd95880cda299d1a9f61337b3c210d3d698403893d0eb4206fc20e70138af4bc` |
| 55 | `theorem` | [signed_torsion_height_detects_positive_negative_balanced](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/signed-torsion-height-detects-positive-negative-balanced.md) | 497 | `result-track:6bd86b1ee465656eb4e0ecba34aadb5a8eb674de06649cfbf25596145153b5a5` |
| 56 | `theorem` | [complex_phase_fallback_to_branch_coordinate](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/complex-phase-fallback-to-branch-coordinate.md) | 506 | `result-track:b973fea4045a8f8be6107d28729d0c2cac89c74104fa687642345f975a19fc4a` |
| 57 | `theorem` | [every_site_lifted_before_spherical_medoid](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/every-site-lifted-before-spherical-medoid.md) | 513 | `result-track:bb64f2ba0dfb48028c0ff00faefb2283fa3244d21c504ed75efa365e403e2a62` |
| 58 | `theorem` | [spherical_medoid_recomputed_on_lifted_cloud](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/spherical-medoid-recomputed-on-lifted-cloud.md) | 527 | `result-track:64b9f885ce4850a0e26bb5009e2fd4985a55728d2b713097e48cb2fce421371a` |
| 59 | `theorem` | [boundary_bit_uses_height_and_residue_decrease](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/boundary-bit-uses-height-and-residue-decrease.md) | 535 | `result-track:f58463ed0abef126f83c9465202a9eb5ac6ba8731efa3d9902fb1ad47f275c97` |
| 60 | `theorem` | [kakeya_grain_is_tube_at_lifted_site](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/kakeya-grain-is-tube-at-lifted-site.md) | 547 | `result-track:011473ed2a1112c9567e6ee11aa6278fecb3d8560f511ec7ec7e1935007420f5` |
| 61 | `theorem` | [frequency_collapse_records_positive_mode](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/frequency-collapse-records-positive-mode.md) | 562 | `result-track:f92f24179bb6e8a0c4076b6dd7d443d5671b1bdd5452046f7a644e676ebb83e8` |
| 62 | `theorem` | [finite_spectral_language_stays_boundary_level](../../../../../ComputerScience/AlgorithmsInComputerScience/SphericalKakeyaLiftBoundaryNamespaced.lean/declarations/finite-spectral-language-stays-boundary-level.md) | 570 | `result-track:543f79e97754d89bf0671459837bb31aa06aa610dae5910b5efb79af6f6fbfe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0720bfdee95feab752ea47063c0d84afeb1b86eec768179f697fbb08809bbe9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SphericalKakeyaLiftBoundary/Variantfdb515dc849cf71f2efce25da4ed7096d72bae3d45ba590633634c4c29bda6f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
