# Verification target: Projective Spectrum Structure Sheaf Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16d13a313fdcbe94729aa3a89c612e6cd1e46a49",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16d13a313fdcbe94729aa3a89c612e6cd1e46a49`.

Source path: `GRWTSK/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.HomogeneousLocalization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/isfraction.md) | 79 | `declaration-track:400e57087ab643406290af3298d54292f2c912d996d3ba36e0ed2b35f4000ad9` |
| 2 | `def` | [isFractionPrelocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/isfractionprelocal.md) | 86 | `declaration-track:7f6fbe3dac08367d7f669273afe3d93a70f53aae7c246bd23fba6a4e989f6314` |
| 3 | `def` | [isLocallyFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/islocallyfraction.md) | 93 | `declaration-track:9ff139fd439f44f20d33493c4bfdff0934dc6e5cca35d9916e1659b0a0d9804a` |
| 4 | `theorem` | [zero_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/zero-mem.md) | 102 | `result-track:d29933758203c8041ea8495028c24a2f2b2b7cd3f37a0c22d0fd2892b4ee2fe5` |
| 5 | `theorem` | [one_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/one-mem.md) | 106 | `result-track:003f1f82197e8f4e8aae719711fbeb7be1058239852ef13ded6424b6e08d1461` |
| 6 | `theorem` | [add_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/add-mem.md) | 110 | `result-track:65517a03d7bf562751c76c8fb52e542b78c58ece99393d371b967e46eab434a4` |
| 7 | `theorem` | [neg_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/neg-mem.md) | 126 | `result-track:8d71e9182b597074304351844fcf4f49f1d422cbffd6195a2f152db1cb3d0e9d` |
| 8 | `theorem` | [mul_mem'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/mul-mem.md) | 133 | `result-track:a7830e6b517f05a1bf77fd71aed020aa8e1973858eda2319396ce70d367fa970` |
| 9 | `def` | [sectionsSubring](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/sectionssubring.md) | 157 | `declaration-track:9d18696c8c32a4efd294a8c3bea8a1c8c733403be4a28806d7baaeeba2fbbc1e` |
| 10 | `def` | [structureSheafInType](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/structuresheafintype.md) | 170 | `declaration-track:4e4ccfc6a9c3493a29eba5a67c8af2f3ffe5bdc2fa50179bcb3c49c338c1e16b` |
| 11 | `instance` | [commRingStructureSheafInTypeObj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/commringstructuresheafintypeobj.md) | 173 | `declaration-track:5b1c124c101df0e86954cc02b002aa27f7b60d1c992389608950c41d71476f08` |
| 12 | `def` | [structurePresheafInCommRing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/structurepresheafincommring.md) | 180 | `declaration-track:6b8db01393189392a1d5e5a5f3db4ea603da2474407e7cedd79d6c70ca5fb08b` |
| 13 | `def` | [structurePresheafCompForget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/structurepresheafcompforget.md) | 191 | `declaration-track:7d25031769e482cceca2debc56ac83bb8f711b1e65a3d0e5c5aec6ff7f023107` |
| 14 | `def` | [Proj.structureSheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-structuresheaf.md) | 202 | `declaration-track:16ef3990962301ffb081477a576417683c2efe8410e1b97f57d53f8b22e00dcb` |
| 15 | `theorem` | [Proj.res_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-res-apply.md) | 220 | `result-track:6b93bd52cec585444f97aafa70cab34ff62c1aca71a5985b4e4747de08ead308` |
| 16 | `theorem` | [Proj.ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-ext.md) | 222 | `result-track:2dcfd384c4e8e9101f2fac33e12eb873e1c887ebc338b7ba7030f104d5099cb4` |
| 17 | `theorem` | [Proj.add_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-add-apply.md) | 223 | `result-track:7f65e171b5be8b50ba58fa80e671edd21adac948ff6808d7b13ab42ab57d5f66` |
| 18 | `theorem` | [Proj.mul_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-mul-apply.md) | 224 | `result-track:861531c72e1e749f8f51488f5659370eb35879b08016e3dca801f69423ea6f1e` |
| 19 | `theorem` | [Proj.sub_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-sub-apply.md) | 225 | `result-track:2e7cf006bd7e9d1dd3b933714f4ad4e3b917489182a4987fbf6f9b449080beea` |
| 20 | `theorem` | [Proj.pow_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-pow-apply.md) | 226 | `result-track:847463f0d9b236be8c2fda64f3b260852d411bcace8f66a4eed5faf8140d1dd2` |
| 21 | `theorem` | [Proj.zero_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-zero-apply.md) | 227 | `result-track:da80f215e960f76939d2776b269f02784ae52b674543b58ecd78b308dfea4e50` |
| 22 | `theorem` | [Proj.one_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-one-apply.md) | 228 | `result-track:1a73c7c51752733a03ce1dab251548e17ff95179a419260532c90d82f238f68a` |
| 23 | `def` | [Proj.toSheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-tosheafedspace.md) | 233 | `declaration-track:8db0f600cacd5796e16826e2074f0e435c5252216ce40341de7e1758cb8a613f` |
| 24 | `def` | [openToLocalization](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/opentolocalization.md) | 241 | `declaration-track:03b5a2da4b83cda162b7131a1aeb0d5b7c7913e434f9ea1370716ba3d61fe801` |
| 25 | `def` | [stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/stalktofiberringhom.md) | 253 | `declaration-track:e4a3a1b19da175e8de7c87efe89e882c31eee280c5b7ccbabba4d43c54e0b376` |
| 26 | `theorem` | [germ_comp_stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/germ-comp-stalktofiberringhom.md) | 262 | `result-track:5873cd0ccb06e15b91dbca371f550f739ac4b08d319d40dd1a727563e3ec3af1` |
| 27 | `theorem` | [stalkToFiberRingHom_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/stalktofiberringhom-germ.md) | 269 | `result-track:ce41714ff57862574711a0801560793cb03f6831e4b0d9ca9bc38bd499dcec38` |
| 28 | `theorem` | [mem_basicOpen_den](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/mem-basicopen-den.md) | 274 | `result-track:81e393a73fd09ea991b09a854500b919aabbc8b433f50e93076bc467618a1ee8` |
| 29 | `def` | [sectionInBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/sectioninbasicopen.md) | 283 | `declaration-track:ee530804ef3937226ea9db8e77bbc718e5ca844ab54a8e2075b075a852812a03` |
| 30 | `def` | [homogeneousLocalizationToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/homogeneouslocalizationtostalk.md) | 295 | `declaration-track:31e3bebe8c43c8bc9af58820c41d980698067ac56b4fa0b46cbe348d134d116f` |
| 31 | `lemma` | [homogeneousLocalizationToStalk_stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/homogeneouslocalizationtostalk-stalktofiberringhom.md) | 317 | `result-track:91cb4d1413d3560758cabef95118a3ad71d6f25ccbd719df1d9c86f4c0c55dcc` |
| 32 | `lemma` | [stalkToFiberRingHom_homogeneousLocalizationToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/stalktofiberringhom-homogeneouslocalizationtostalk.md) | 335 | `result-track:01b69b500d7577462a2687554363460f67a07e6292d03b440552a4191f9343d2` |
| 33 | `def` | [Proj.stalkIso'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-stalkiso.md) | 343 | `declaration-track:0862ee36f0870339ec2bfab1523cd513702f0e80a7fdffd867375a052fe7fda6` |
| 34 | `theorem` | [Proj.stalkIso'_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-stalkiso-germ.md) | 351 | `result-track:a941ccaa0962167d8dcaab1db5e9c49307a14cf2ffa2f13319aef56f028d994f` |
| 35 | `theorem` | [Proj.stalkIso'_symm_mk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-stalkiso-symm-mk.md) | 357 | `result-track:518eb188ab94950ae50767ff8bc198b47664729a938725c0ea77aab2efa9e5da` |
| 36 | `def` | [Proj.toLocallyRingedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheafNamespaced.lean/declarations/proj-tolocallyringedspace.md) | 362 | `declaration-track:4f0c7eb00db9fcbf6d437540e3f15d79a517cfa294c67f578a531ca915ecee3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7847ab448e66821094ecdb121b3b2cd3fe1599bc12dab654f214c482c8704aff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean","GRWTSK/_verification/specifications/Algebra/StructureSheaf/Variant7815670d762c0ee0cc25ced6ed223c2bb6d20cf18f69cec49228f22067205c83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
