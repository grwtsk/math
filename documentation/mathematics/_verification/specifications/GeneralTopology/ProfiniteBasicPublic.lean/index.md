# Verification target: Profinite Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6059ce652699604f57cc70e80eb73de5985c00be",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProfiniteBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ProfiniteBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6059ce652699604f57cc70e80eb73de5985c00be`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Profinite](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/profinite.md) | 52 | `declaration-track:b07013197e6735e78b96350c6993184187d56c41e0b71c89a9a2eea17bed3909` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:33774fc8d65180f8f6a48d7e75b4ddb1392dd19d48e0abdfadd1e775280d6022` |
| 3 | `abbrev` | [of](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/of.md) | 63 | `declaration-track:00f4a12cf9078ac06c4149c8d8fa0a45479d026cc5d4e3a7ee11f2c5161ea401` |
| 4 | `def` | [delabOf](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/delabof.md) | 70 | `declaration-track:54a194eb5bff3da019373d1062d2e1b25d21bd28351e2e1ed933c91c5d34ed67` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/instance-source-edition-6.md) | 72 | `declaration-track:b3816c8a53a448ae0a08f5d8b204f9f01c0c4a6a2d5987665d50b7b8b1cf02a1` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/instance-source-edition-4.md) | 75 | `declaration-track:41a460c6d4f4c6a15515cbfc378bec1f8a182da4a53904465025d2514e845413` |
| 7 | `abbrev` | [profiniteToCompHaus](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/profinitetocomphaus.md) | 81 | `declaration-track:9c8e2576db6ab5b5d8ce46862a22637288c2c62e2a3941f3e94b5345edea4ef5` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/instance-source-edition-3.md) | 86 | `declaration-track:3ef1c3d31eae97275b771c24f4fdc561ac18a6f6936d3e10904be3c3728d7f5d` |
| 9 | `abbrev` | [Profinite.toTopCat](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/profinite-totopcat.md) | 91 | `declaration-track:e2aaceace52333ab4898e195d02e6c048b35220310bba59da53efdcc130c42fe` |
| 10 | `def` | [CompHaus.toProfiniteObj](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/comphaus-toprofiniteobj.md) | 104 | `declaration-track:5cd29f8eb6e40ebf258288bc5f5bbf62709250aa2117fb664f11164928708041` |
| 11 | `def` | [Profinite.toCompHausEquivalence](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/profinite-tocomphausequivalence.md) | 114 | `declaration-track:7b9d0c265cb8a7f4d3678a3868c649e53bcb69ec0ee17dc7c99974beba0b3693` |
| 12 | `def` | [CompHaus.toProfinite](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/comphaus-toprofinite.md) | 128 | `declaration-track:940116753fce00c7dcd49f77f66566918490a655624b94c89c3a20fda842f85e` |
| 13 | `theorem` | [CompHaus.toProfinite_obj'](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/comphaus-toprofinite-obj.md) | 131 | `result-track:ab58bdf35fee06059218acee3f7cb15791150079f2ddae0d0a46e2699b0ccd0d` |
| 14 | `def` | [FintypeCat.botTopology](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/fintypecat-bottopology.md) | 137 | `declaration-track:3b1e0caf2b089b074a08bd69f8ec1b389f931ea30f69a2badb5944fbd6eb5a38` |
| 15 | `theorem` | [FintypeCat.discreteTopology](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/fintypecat-discretetopology.md) | 143 | `result-track:b2ef7949fe9d8a16ebb473c387da00dc9647b3a91911a14f5c04648598a07e21` |
| 16 | `def` | [FintypeCat.toProfinite](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/fintypecat-toprofinite.md) | 151 | `declaration-track:70583d30da2f59672d6945d9f4d8dc93ad13a65fb8752769aeed5c7505bb3042` |
| 17 | `def` | [FintypeCat.toProfiniteFullyFaithful](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/fintypecat-toprofinitefullyfaithful.md) | 156 | `declaration-track:cf57a35f73b5f924284d0ea19f130fdfd05b3820b85ab78689100d4390887754` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/instance.md) | 161 | `declaration-track:21d623b87aff00e0093da2f45c928b5a0b4e3a55bb4154061e347ade9cd20f0a` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/instance-source-edition-7.md) | 163 | `declaration-track:c3e2d309f440584f2ba78ef0ea7be2f7311c0ea2852e3a707eec395d5543190d` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/instance-source-edition-5.md) | 165 | `declaration-track:4ce94b266687bd3518d33bb523f1543e54d7627da4eef48c41fb5b41ddb4947e` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/instance-source-edition-8.md) | 167 | `declaration-track:e981ae953ae815ed4292163d8e0e621319265d7465e4789ec2a46375febae283` |
| 22 | `def` | [limitCone](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/limitcone.md) | 177 | `declaration-track:eebb2faa9b5e51f2fbe303c567be0bf02f67f572f5defd88174734a73593486f` |
| 23 | `def` | [limitConeIsLimit](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/limitconeislimit.md) | 193 | `declaration-track:9a89a24439fbf1bb1ce99897df444bc978805c086a349e38d5653f2c33fad7c3` |
| 24 | `def` | [toProfiniteAdjToCompHaus](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/toprofiniteadjtocomphaus.md) | 207 | `declaration-track:fb0c6a3a8285a091be61c2d412a78eb65df650ab238f80e1ef2e0f64a07b8d25` |
| 25 | `instance` | [toCompHaus.reflective](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/tocomphaus-reflective.md) | 211 | `declaration-track:93888a9117e52805e23bbd028920b0c8b15e1038c59c6d2084c6cc2b38f915e2` |
| 26 | `instance` | [toCompHaus.createsLimits](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/tocomphaus-createslimits.md) | 215 | `declaration-track:d47fdcd71e707846c6bc1facf8d219217800e3f8ccf0c41ae72ba622089fba1e` |
| 27 | `instance` | [toTopCat.reflective](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/totopcat-reflective.md) | 218 | `declaration-track:d528aefbff983bfccc101239f5debb3b5397c6ca7a0da40a124d596f75ac07cf` |
| 28 | `instance` | [toTopCat.createsLimits](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/totopcat-createslimits.md) | 221 | `declaration-track:8ae58ef4ddae137ab3b302ccbd2bccec0249bac5e6a4610c59d5a24a16a56a04` |
| 29 | `instance` | [hasLimits](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/haslimits.md) | 224 | `declaration-track:598c70faf171766bf60631fad629a1f2c2cfc17d8b6632e81b1ccf475c8d5f1c` |
| 30 | `instance` | [hasColimits](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/hascolimits.md) | 227 | `declaration-track:169a731c4e3eb880a108328c2ee0ddaab27c019e3bae4d8028a62f1dbaf3010c` |
| 31 | `instance` | [forget_preservesLimits](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/forget-preserveslimits.md) | 230 | `declaration-track:499721e18a531cf9320b2037aed8bd48cca3dcd73b03e950aa2bc13cc201ab2c` |
| 32 | `theorem` | [epi_iff_surjective](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/epi-iff-surjective.md) | 234 | `result-track:aa3c3b368a5a3f88e1441673f93616208d6e5f8b0d82a137ea6a38f12c455f57` |
| 33 | `def` | [pi](../../../../GeneralTopology/ProfiniteBasicPublic.lean/declarations/pi.md) | 269 | `declaration-track:e1928fe96c30e1c0474ded1b93e68a39afecdcc39fba349ea6abd3f7acae12c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9227695c21114cf6c510b5cf7af744c3f72a0b4162eb566dde981729c92311c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant4c737578911f4e73ce7e0e9d2f0842863dc58bd9b0174f28db40924bad7bd18e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
