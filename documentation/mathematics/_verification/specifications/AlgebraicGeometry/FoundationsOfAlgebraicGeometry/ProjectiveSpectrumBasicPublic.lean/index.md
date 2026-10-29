# Verification target: Projective Spectrum Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "080e13f6216621fcf7dadf6c41c4a97d56e1b78d",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `080e13f6216621fcf7dadf6c41c4a97d56e1b78d`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopen.md) | 54 | `declaration-track:198003d9c0df1777e33e0de40abf92c0f85bac8ea628aa3b97aebd2a64a4a279` |
| 2 | `theorem` | [mem_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/mem-basicopen.md) | 58 | `result-track:ace8ce0dda9cfdb76101705ee4feb1feb33a7ba7e9826bc73edefb86a626835a` |
| 3 | `theorem` | [basicOpen_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopen-one.md) | 62 | `result-track:ad59c4b84fe5b0218c825c6b9af53000bb5b2175979eb4baa5bc75ba170e3801` |
| 4 | `theorem` | [basicOpen_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopen-zero.md) | 64 | `result-track:0ab86b100a4c3cf60b225d2bfd1f4104f4b5b65b189d1c114584cd6978406a62` |
| 5 | `theorem` | [basicOpen_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopen-pow.md) | 66 | `result-track:0dd1cfdef78be7954f1c142421bf214dd12a6a569464c5c2764239382e3fd569` |
| 6 | `theorem` | [basicOpen_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopen-mul.md) | 69 | `result-track:304a44a50066c30a6f9f8667a49a9aaeb3c681608bd6126bda1b533670977eb0` |
| 7 | `theorem` | [basicOpen_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopen-mono.md) | 72 | `result-track:322bb396a94d3feabdf42019c9ffe1cd8fd785800148c741e04c46d50cc44386` |
| 8 | `theorem` | [basicOpen_eq_iSup_proj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopen-eq-isup-proj.md) | 75 | `result-track:3fce9d65bb94eb2782d1f88efa32d8f72e0eca0f764d6463a18ad2f66f648848` |
| 9 | `theorem` | [isBasis_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/isbasis-basicopen.md) | 79 | `result-track:16c264274c6c318fdceb4344c401a952570ca5a6244a8672007ecf90832a4c6b` |
| 10 | `lemma` | [iSup_basicOpen_eq_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/isup-basicopen-eq-top.md) | 86 | `result-track:217d41f5de3f827df4b3c0359b4a98ab93f1684795928f68e69616af8760decc` |
| 11 | `lemma` | [iSup_basicOpen_eq_top'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/isup-basicopen-eq-top-source-edition-2.md) | 97 | `result-track:2ca80c1a26fe56ca14130d7364e47232ef6896832b2a1c927e1a79146e290944` |
| 12 | `def` | [awayToSection](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/awaytosection.md) | 134 | `declaration-track:9209b12cc3e5ba29f578ea0ce729bf6dac520c5a73d772c4541d6e5e15588ea3` |
| 13 | `def` | [basicOpenToSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopentospec.md) | 140 | `declaration-track:d1be9328842384628217b05d2512047bbd1a62076c17deefe683c5ff804e8f9a` |
| 14 | `lemma` | [basicOpenToSpec_app_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopentospec-app-top.md) | 144 | `result-track:6e574b29179b2d6a10e6656f90d4a322e1e66c8cfe4879bb0c0a2ccd5beb1a4a` |
| 15 | `def` | [toSpecZero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/tospeczero.md) | 151 | `declaration-track:788d66982b51ddb4959bd68470ae369a8dc4a576cabad4b15d38c7977db23494` |
| 16 | `def` | [basicOpenIsoSpec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopenisospec.md) | 161 | `declaration-track:ea2e3c3200a253e3576a5cdd815e4ab477070b6e2e07434e9c401f7d240bcb72` |
| 17 | `def` | [basicOpenIsoAway](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopenisoaway.md) | 176 | `declaration-track:8f89e42b852b245517f0cda2e6cde300d98eeb671c6b5169b2bbce0dca314e09` |
| 18 | `def` | [awayι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/away.md) | 186 | `declaration-track:774410c6ed1b7fddd01ac28b4aa5c0ef1373b0d4147de748e4c315683d3222a8` |
| 19 | `lemma` | [basicOpenIsoSpec_inv_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopenisospec-inv.md) | 190 | `result-track:2ed73b72f178abe83262479d07d1ebbb259d55522ec90d63f265708c8a717bbc` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/instance.md) | 193 | `declaration-track:43d2a9f4a1713443eb9c04551da2fde88d38634f17265441a8db79f32f7a4b88` |
| 21 | `lemma` | [opensRange_awayι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/opensrange-away.md) | 196 | `result-track:7ab63a36497cc6b05796c3869226617e14e8e81bd214f0ea516c8a85aa8b1cb3` |
| 22 | `lemma` | [isAffineOpen_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/isaffineopen-basicopen.md) | 201 | `result-track:4dd9bb152b3fda277114f482ccfda8778932143493eb475aab91549842401f7b` |
| 23 | `lemma` | [awayι_toSpecZero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/away-tospeczero.md) | 206 | `result-track:63072a4c0cdd901055be8425994bb84c04e20fb230aa8e3a93ea1a601ce2eb85` |
| 24 | `lemma` | [awayMap_awayToSection](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/awaymap-awaytosection.md) | 222 | `result-track:496e08ea751752e50c5dc864b31036021b2933ce5011007386b8c92fd3520dc7` |
| 25 | `lemma` | [basicOpenToSpec_SpecMap_awayMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/basicopentospec-specmap-awaymap.md) | 240 | `result-track:1fcd77fda00e75e0072d81268589eda4d84e23efd0d6919ca16e493376adc155` |
| 26 | `lemma` | [SpecMap_awayMap_awayι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/specmap-awaymap-away.md) | 248 | `result-track:d6fef722c547246e6548e677e49f9481455ea3e89415b7a20620ac8fbcdac0a0` |
| 27 | `def` | [pullbackAwayιIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/pullbackaway-iso.md) | 256 | `declaration-track:0ab3d67c66009681a2f6fdaa730bdf164bd66dfd5b72a532f6b0206d69bede80` |
| 28 | `lemma` | [pullbackAwayιIso_hom_awayι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/pullbackaway-iso-hom-away.md) | 265 | `result-track:73759f2666aa8aa425dff2ba0d6422b3001a5cc9a5497f98227c0fe81d327880` |
| 29 | `lemma` | [pullbackAwayιIso_hom_SpecMap_awayMap_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/pullbackaway-iso-hom-specmap-awaymap-left.md) | 272 | `result-track:380a6fba161cfc464b216e8693bfe4229485f5f0ee6fad6935dca76b4f8f24a0` |
| 30 | `lemma` | [pullbackAwayιIso_hom_SpecMap_awayMap_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/pullbackaway-iso-hom-specmap-awaymap-right.md) | 279 | `result-track:845232a725c2ba1cc15168b71a5098615423d4b4ee0fdede0d0687f1fa8913da` |
| 31 | `lemma` | [pullbackAwayιIso_inv_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/pullbackaway-iso-inv-fst.md) | 289 | `result-track:77933560e0f1f2887945913c037c3d4eec048687f1cd49c5205150847519305b` |
| 32 | `lemma` | [pullbackAwayιIso_inv_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/pullbackaway-iso-inv-snd.md) | 295 | `result-track:5926a82bae30493c63dd4a4f5fe7a375073ddada1f6d9e4f5434e1588dbfac0f` |
| 33 | `lemma` | [awayι_preimage_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/away-preimage-basicopen.md) | 301 | `result-track:13c04f75f980b1af7b6a160de090878e0358b02b29ab247dc1692565ca37bb21` |
| 34 | `def` | [affineOpenCoverOfIrrelevantLESpan](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/affineopencoverofirrelevantlespan.md) | 321 | `declaration-track:90fd93a06df1eecd8b5721df3fc050de972ef4baaa17416486276deaf2f98a02` |
| 35 | `def` | [affineOpenCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/affineopencover.md) | 336 | `declaration-track:172e64f3bf091eedf0d03d5031d02fa69b2bfcfe273decd86a92ecd8be7734bd` |
| 36 | `def` | [stalkIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/stalkiso.md) | 355 | `declaration-track:13fe417f54839e19fdee7a25ca4137e69a3bfbf27b709a819d4dda8025037d10` |
| 37 | `def` | [toBasicOpenOfGlobalSections](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/tobasicopenofglobalsections.md) | 369 | `declaration-track:39e94009b59d9497bafc65a1c79b46c94f016e2f021f89ad46544bf77af8a6bd` |
| 38 | `lemma` | [homOfLE_toBasicOpenOfGlobalSections_ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/homofle-tobasicopenofglobalsections.md) | 381 | `result-track:295e957b12e6358a4661c9c9f795abb4f55a3dce1a2162bfcda8c4018102f678` |
| 39 | `def` | [openCoverOfMapIrrelevantEqTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/opencoverofmapirrelevanteqtop.md) | 414 | `declaration-track:a4733c541afc2432adcde8ecd684de974edb6793b03c09906b343eb8ab091cff` |
| 40 | `def` | [fromOfGlobalSections](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/fromofglobalsections.md) | 442 | `declaration-track:fe4490df7c4350370302e2b0898368d9abf74535c69e537593cec8029faab5e4` |
| 41 | `lemma` | [fromOfGlobalSections_preimage_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/fromofglobalsections-preimage-basicopen.md) | 458 | `result-track:12a8c9024344834f790009da2d1b4927c13026ac31adee7634546e1e22139000` |
| 42 | `lemma` | [fromOfGlobalSections_morphismRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/fromofglobalsections-morphismrestrict.md) | 495 | `result-track:10cbfacea99bdbc4464f1bb32401cf0e07ab708f463aa16f0dfae6c251c4c229` |
| 43 | `lemma` | [fromOfGlobalSections_resLE](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/fromofglobalsections-resle.md) | 504 | `result-track:a8f602357eff665506096566ce8787e1ebe65afcd8fd6dff85801b4f78d8827a` |
| 44 | `lemma` | [fromOfGlobalSections_toSpecZero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumBasicPublic.lean/declarations/fromofglobalsections-tospeczero.md) | 514 | `result-track:9bbbc1805d8199aa3c447589d0cc5d81cc8f54854fadb8bb46bbd0a67d550197` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5667659c69f22b869c3738c1210aa670043d9d520078fcd0dacb86d7b4c73cd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Basic/Variant274e9736999556002c89ea15f17d7c4a635260b16c8040bd703ccdc96a5ef452.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
