# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Separation.Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ea6eaf03cfed2bdd437e882d412373fb6098323",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ea6eaf03cfed2bdd437e882d412373fb6098323`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ApplyFun` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/instance--5acfc5088997f8a890952a72.md) | 91 | `declaration-track:5acfc5088997f8a890952a7274d38d169344c0627780a7cacb090c322c4b2ac7` |
| 2 | `def` | [separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separationrel--ecfb7dd9252f77890e8068da.md) | 103 | `declaration-track:ecfb7dd9252f77890e8068da683a40d1375cfc43d257e781af956b0fc96e87c7` |
| 3 | `theorem` | [separated_equiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separated-equiv--0f58199263b8c82a2bf3e041.md) | 109 | `result-track:0f58199263b8c82a2bf3e041a417702455bf62390245ac34eb529d22c73f8e54` |
| 4 | `theorem` | [Filter.HasBasis.mem_separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/filter-hasbasis-mem-separationrel--a598ca911db773e51dccb836.md) | 116 | `result-track:a598ca911db773e51dccb8362ef34621c057d6c2636958a011b5e18dfc028f2e` |
| 5 | `theorem` | [separationRel_iff_specializes](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separationrel-iff-specializes--b4202c9e41b1719dc6586b2b.md) | 121 | `result-track:b4202c9e41b1719dc6586b2b1b17bb020c0b353d4e4f548c758fe7d6bdf156ab` |
| 6 | `theorem` | [separationRel_iff_inseparable](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separationrel-iff-inseparable--d289d00b9339e361e7539120.md) | 126 | `result-track:d289d00b9339e361e75391203cd0c5bd7e2f8ad96919b97c5971eb6423a78b8d` |
| 7 | `class` | [SeparatedSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separatedspace--48d3fb0df072ae8a8a3d06a4.md) | 132 | `declaration-track:48d3fb0df072ae8a8a3d06a4601d5ee330423ddc9b29d367e692577df7594c9e` |
| 8 | `theorem` | [separatedSpace_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separatedspace-iff--5d7ccb57e346a74f0f6e3e46.md) | 137 | `result-track:5d7ccb57e346a74f0f6e3e46a8c92bf443f25d5a399c118dc946ec553bee2b3f` |
| 9 | `theorem` | [separated_def](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separated-def--b7eb33eaee921502d990d553.md) | 141 | `result-track:b7eb33eaee921502d990d553057efa0ac25dc72a3fcbc3e30af3215bae325fd1` |
| 10 | `theorem` | [separated_def'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separated-def--f7d942a2ae77d2a5eef8d033.md) | 147 | `result-track:f7d942a2ae77d2a5eef8d033d77711fb71f42d742731ed66054c1baf670caa9a` |
| 11 | `theorem` | [eq_of_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/eq-of-uniformity--241b68bd6b9dbcf7335a58f6.md) | 152 | `result-track:241b68bd6b9dbcf7335a58f680b7cf6b8a8717972996a155553ccf3672222d93` |
| 12 | `theorem` | [eq_of_uniformity_basis](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/eq-of-uniformity-basis--96b20b7370278cb003080555.md) | 157 | `result-track:96b20b7370278cb00308055578343a37de9cf3bf05b72d5a81ab2d9346f4a1d5` |
| 13 | `theorem` | [eq_of_forall_symmetric](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/eq-of-forall-symmetric--c22c23e558e74b7f292727e3.md) | 163 | `result-track:c22c23e558e74b7f292727e3315831981ef8e44c251cd5b9277d8dacc6fc484f` |
| 14 | `theorem` | [eq_of_clusterPt_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/eq-of-clusterpt-uniformity--587606d0a7396063e7e4dc99.md) | 168 | `result-track:587606d0a7396063e7e4dc99e5301da69048c1c4f415e1a44d53b67624e01854` |
| 15 | `theorem` | [idRel_sub_separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/idrel-sub-separationrel--fd572fc4ca30ea7319e47bbd.md) | 174 | `result-track:fd572fc4ca30ea7319e47bbdaccbdf872176a1f716337327bdc4278142245744` |
| 16 | `theorem` | [separationRel_comap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separationrel-comap--ee9ab576ff7264042349fb48.md) | 182 | `result-track:ee9ab576ff7264042349fb48ea69802d542d95901456a4f8d945f00fbe97ee46` |
| 17 | `theorem` | [Filter.HasBasis.separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/filter-hasbasis-separationrel--1fd2709801a2503094b98078.md) | 192 | `result-track:1fd2709801a2503094b980786553dfb19bb2f32ee4046bda21581aea7ac3ead3` |
| 18 | `theorem` | [separationRel_eq_inter_closure](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separationrel-eq-inter-closure--c7774d80e5d9f9214a18a2f9.md) | 198 | `result-track:c7774d80e5d9f9214a18a2f9e98f2c34dfea0d9e0c491c6361602869891a32ce` |
| 19 | `theorem` | [isClosed_separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/isclosed-separationrel--ad710ff3601706cce76d1feb.md) | 202 | `result-track:ad710ff3601706cce76d1feb5621a310866990cdc7da4aebe86e273362792e12` |
| 20 | `theorem` | [separated_iff_t2](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separated-iff-t2--f2a8484ea3a36f7386e3e098.md) | 209 | `result-track:f2a8484ea3a36f7386e3e098680820cbad2b0558f094b6633fb08776230a3f89` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/instance--46ab01bc8e169e81020b7e9f.md) | 221 | `declaration-track:46ab01bc8e169e81020b7e9f4c692619ed655baf97b26ea8d046aad5377faddb` |
| 22 | `instance` | [Subtype.separatedSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/subtype-separatedspace--0c7643c3cacb3dcf1e3714f6.md) | 226 | `declaration-track:0c7643c3cacb3dcf1e3714f6350296a0c7bb58b624b09563a9f9c0909a09262d` |
| 23 | `theorem` | [isClosed_of_spaced_out](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/isclosed-of-spaced-out--702466a98aa7a84bb62f79b4.md) | 230 | `result-track:702466a98aa7a84bb62f79b4da4d27ff0ec795ca0d11cc0a7a9d3613676c628f` |
| 24 | `theorem` | [isClosed_range_of_spaced_out](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/isclosed-range-of-spaced-out--bf66ee4181950329783e2c3f.md) | 247 | `result-track:bf66ee4181950329783e2c3f30216c296dab6dfdfe471c2940e3450d4f6e9cec` |
| 25 | `def` | [separationSetoid](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separationsetoid--ce8b0ab2da06811b374943ca.md) | 261 | `declaration-track:ce8b0ab2da06811b374943caac1e63f973ca312d834b8034f2549dcf356dc257` |
| 26 | `instance` | [separationSetoid.uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separationsetoid-uniformspace--b00f4ba005682e8f65d00fed.md) | 267 | `declaration-track:b00f4ba005682e8f65d00fedd5ec40dfd6f3b997ed12ff0ebdacc1aa7e244a30` |
| 27 | `theorem` | [uniformity_quotient](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/uniformity-quotient--20dc584574da94b3cd6fecbf.md) | 289 | `result-track:20dc584574da94b3cd6fecbf95954f83a891a82d25072df5d9b25028281b2692` |
| 28 | `theorem` | [uniformContinuous_quotient_mk'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/uniformcontinuous-quotient-mk--a459468b887628530938ccc7.md) | 294 | `result-track:a459468b887628530938ccc7f783689bb58a3397c764261049172d4186733e0e` |
| 29 | `theorem` | [uniformContinuous_quotient_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/uniformcontinuous-quotient-mk--b9c67893e1f6992f5b2a9637.md) | 299 | `result-track:b9c67893e1f6992f5b2a9637af8009bb0fdc00ff9b1d6873c72108fd593beae1` |
| 30 | `theorem` | [uniformContinuous_quotient](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/uniformcontinuous-quotient--825cc2297c187b9aa59f9635.md) | 302 | `result-track:825cc2297c187b9aa59f9635b483cf70d8a789b79b727a62dd7a7d54279e95ca` |
| 31 | `theorem` | [uniformContinuous_quotient_lift](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/uniformcontinuous-quotient-lift--d250cff7aa5f232c1afbaa0e.md) | 307 | `result-track:d250cff7aa5f232c1afbaa0e9920c01481e5a33115a51979d2c4528e6c19e3d4` |
| 32 | `theorem` | [uniformContinuous_quotient_lift₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/uniformcontinuous-quotient-lift--6f05bbbf6688535f5616e50e.md) | 312 | `result-track:6f05bbbf6688535f5616e50ed8b0d05707eed6e2bdd479116b361fc0ce8efef0` |
| 33 | `theorem` | [comap_quotient_le_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/comap-quotient-le-uniformity--0020bc8f8c3619acd114851a.md) | 321 | `result-track:0020bc8f8c3619acd114851a54b8f93b0147f7ffe05d25c9219c1003a74bb644` |
| 34 | `theorem` | [comap_quotient_eq_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/comap-quotient-eq-uniformity--dc408c376aba9e6697233e3f.md) | 330 | `result-track:dc408c376aba9e6697233e3f047dda828f776ebda9f62e6e25be1612ce540a41` |
| 35 | `instance` | [separated_separation](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separated-separation--f930e8ff23c1d025812dc2a2.md) | 335 | `declaration-track:f930e8ff23c1d025812dc2a2d1f14381c8bbb56fc7dd32fc770e54b4d4ec55f8` |
| 36 | `theorem` | [separated_of_uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separated-of-uniformcontinuous--0562e66b54b666eeadc9d116.md) | 349 | `result-track:0562e66b54b666eeadc9d1161470836a2845d0b5045070c1f1b07bf763b7b81c` |
| 37 | `theorem` | [eq_of_separated_of_uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/eq-of-separated-of-uniformcontinuous--6e0fd851f19b5bfb383789f2.md) | 353 | `result-track:6e0fd851f19b5bfb383789f262cf9ad1e46bea4a74dcfee7b5b3be42861870ce` |
| 38 | `def` | [SeparationQuotient](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separationquotient--44697f1c1c567797a4ceb3d3.md) | 359 | `declaration-track:44697f1c1c567797a4ceb3d336b64a43f8638002213d0ceff355754dfe3bdb99` |
| 39 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/instance--5fa3319ddf1a388c77a6f192.md) | 365 | `declaration-track:5fa3319ddf1a388c77a6f192cb43a75d12e037079bb1c063b4769e4359b3992d` |
| 40 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/instance--b97506923596228a3f879f94.md) | 368 | `declaration-track:b97506923596228a3f879f949a294aa1900c26d5e070f36e8a959c856c05010c` |
| 41 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/instance--57b0065859e074286606af56.md) | 371 | `declaration-track:57b0065859e074286606af561fb2ca7ae77c820c77c56be44602c3ef23797e74` |
| 42 | `lemma` | [mk_eq_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/mk-eq-mk--8a10298f8b27abcc46762247.md) | 374 | `result-track:8a10298f8b27abcc46762247223095e8e554c4810fd25a2f9380e8a1bc82a0bf` |
| 43 | `def` | [lift](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/lift--8b57c7e55bfdffe1f53a051c.md) | 379 | `declaration-track:8b57c7e55bfdffe1f53a051c809bb6221d047f3cda4674ecac4555b1754211fa` |
| 44 | `theorem` | [lift_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/lift-mk--f36f3efb3353dc5af4c02cda.md) | 384 | `result-track:f36f3efb3353dc5af4c02cdaa25823d06f3591b7862d4674ed56e45243f89eb0` |
| 45 | `theorem` | [uniformContinuous_lift](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/uniformcontinuous-lift--092a2ef675316042fd3b7f01.md) | 388 | `result-track:092a2ef675316042fd3b7f01d596b77b8beec0a8ff88cee14cd08a34af42b674` |
| 46 | `def` | [map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/map--3c546107da5d3d418ef7148a.md) | 397 | `declaration-track:3c546107da5d3d418ef7148aa907af0f7f775360fbb9b13671efb6dd288dccd4` |
| 47 | `theorem` | [map_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/map-mk--ebb566ddc1d2894b20d574d7.md) | 401 | `result-track:ebb566ddc1d2894b20d574d7344760e9bcd8f0c866b24137105299b3d2846b62` |
| 48 | `theorem` | [uniformContinuous_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/uniformcontinuous-map--75d59ea1221f536e95577c53.md) | 405 | `result-track:75d59ea1221f536e95577c5353fb1f5958e630a6fb0cffda21f94911a2260df5` |
| 49 | `theorem` | [map_unique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/map-unique--d59bd7376657787211aaa1e8.md) | 409 | `result-track:d59bd7376657787211aaa1e8a1e7a5dfd4b8235def0785b7a44a0ee006cc1d69` |
| 50 | `theorem` | [map_id](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/map-id--09f3c8afd9cd448f516b42a1.md) | 418 | `result-track:09f3c8afd9cd448f516b42a1a415447180f12039caf11e1b85070777c8287644` |
| 51 | `theorem` | [map_comp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/map-comp--de68cc99a42ae271417bf319.md) | 422 | `result-track:de68cc99a42ae271417bf3190b83f7417dc9bb4e47569194cb393aacbbbf48e7` |
| 52 | `theorem` | [separation_prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separation-prod--1ce78d313dea9487d03e2478.md) | 429 | `result-track:1ce78d313dea9487d03e24785d7371550e06c6a179cdb89a73e26d7a1d50df6d` |
| 53 | `instance` | [Separated.prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant52743748b50d941f7cdef5a592e88984c486e5beffa3a7dad591711f96cbbb25.lean/declarations/separated-prod--1e843872a47a7beca9f61618.md) | 445 | `declaration-track:1e843872a47a7beca9f616188033fe603c39233bf2563df186d28665f2eca5da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
