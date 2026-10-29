# Verification target: Polar Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65454f8081734f3b38e6da050249e6f119c4d8f1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Polar/Variant2839b9902548747433a10e1de63bca5f4d377a07475e66c5e38cefc1629fddea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65454f8081734f3b38e6da050249e6f119c4d8f1`.

Source path: `GRWTSK/Analysis/Polar/Variant2839b9902548747433a10e1de63bca5f4d377a07475e66c5e38cefc1629fddea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Polar/Variant2839b9902548747433a10e1de63bca5f4d377a07475e66c5e38cefc1629fddea.lean.json)

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
| 1 | `def` | [polar](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar.md) | 63 | `declaration-track:0f782704619a88fddff0628f36cacd08c0299c4f0b0c2ced9889f3ee9917b687` |
| 2 | `theorem` | [polar_mem_iff](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-mem-iff.md) | 66 | `result-track:1d0b16b8571ff35060890daa8df6586fd6261c45192beec8601b246c7563f2f2` |
| 3 | `theorem` | [polar_mem](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-mem.md) | 69 | `result-track:9ebb4d27388082fdf6e756d9b7dc37e04a59f69cdbb27b66c415bf7f50cfe6bf` |
| 4 | `theorem` | [polar_eq_biInter_preimage](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-eq-biinter-preimage.md) | 72 | `result-track:00ac9745be4f5819d2c704174907a077a6db5a1fa30b49aa577e709f272f07e5` |
| 5 | `theorem` | [polar_isClosed](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-isclosed.md) | 76 | `result-track:a970e116e923429f310cc2533af3c97bfbfdf2cf85305079b5bc36d17a664126` |
| 6 | `theorem` | [zero_mem_polar](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/zero-mem-polar-source-edition-2.md) | 82 | `result-track:e6d7d5f0e0496f794ebc0df7e588ddcfb8de734e2428782b2b26900509bd693b` |
| 7 | `theorem` | [polar_nonempty](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-nonempty-source-edition-2.md) | 85 | `result-track:ed50ed8f779583645c166c93852f563f1087c1a0471d715f46d30b91c51404b3` |
| 8 | `theorem` | [polar_eq_iInter](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-eq-iinter.md) | 89 | `result-track:72c017e078b3c3f08275f7378daf12d8d9dd01921b47bceaee0cdedc61d5f6ce` |
| 9 | `theorem` | [polar_gc](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-gc.md) | 96 | `result-track:348fd5810dc65df0fd1247c0adbb9aeb09477fc8e201c47536538fb8a9824c62` |
| 10 | `theorem` | [polar_iUnion](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-iunion.md) | 101 | `result-track:69266d8e49443d184ed2d51052c2c2b511e7134077d7fce18950aae7dc8bfaef` |
| 11 | `theorem` | [polar_union](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-union.md) | 105 | `result-track:74417bf70fe9a02bf8e833b11fc3a48fa383682095fec06e372222fe2c984f85` |
| 12 | `theorem` | [polar_antitone](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-antitone.md) | 108 | `result-track:b2ebfb6bacfdc97074759ba25788b0a60caf72287cc109e76f675a8c952d1d75` |
| 13 | `theorem` | [polar_empty](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-empty.md) | 112 | `result-track:83c601933704f5a78e10f2d7d8bca4e6f6630a43b77245b622feb40a80e2576f` |
| 14 | `theorem` | [polar_singleton](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-singleton.md) | 116 | `result-track:b927960f7439ee02be9368dc7dde839c365ca424973eccc27a43e7ee32ec0159` |
| 15 | `theorem` | [mem_polar_singleton](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/mem-polar-singleton.md) | 120 | `result-track:d4248237511062426647b5ef72617fb34cbe35561a594646368441a6b895ad74` |
| 16 | `theorem` | [polar_zero](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-zero-source-edition-2.md) | 123 | `result-track:3c4a922532ed6aca4790a027ba2d2098dcc10e9cf43842afb52adcafd02aab24` |
| 17 | `theorem` | [subset_bipolar](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/subset-bipolar.md) | 126 | `result-track:908f026d6e20fe5fd9d7cd8bed74260b324f9d20d3e66b02936f70385b3fdc74` |
| 18 | `theorem` | [tripolar_eq_polar](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/tripolar-eq-polar.md) | 131 | `result-track:a0f96aef096e361936ead9688adb4631befa9b23aa98edf00f9017855ad3f455` |
| 19 | `theorem` | [sInter_polar_finite_subset_eq_polar](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/sinter-polar-finite-subset-eq-polar.md) | 134 | `result-track:ae08d17effeb1f7b68dcf8370a6342475831a9e90717514e1d571d4bbb1b7a90` |
| 20 | `theorem` | [polar_univ](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-univ-source-edition-2.md) | 151 | `result-track:e0cdfd4748767c4690d79f895dfe3bfaa4324cc68c8ef7d7ba06c49ae6890011` |
| 21 | `theorem` | [polar_subMulAction](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-submulaction.md) | 163 | `result-track:30c8945e1a3797e71d0e326a031cbade211b91524bec0512922b80582322db09` |
| 22 | `def` | [polarSubmodule](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polarsubmodule.md) | 176 | `declaration-track:27d3aee6857859f37b472d9fa182985b139dee120f0b750033e8f207d13a49fc` |
| 23 | `theorem` | [dualPairing_separatingLeft](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/dualpairing-separatingleft.md) | 189 | `result-track:48c7baac43fe22f1c0bebafc78806311ba934a16ea25a16cc852727c4ad3ecf2` |
| 24 | `def` | [polar](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-source-edition-2.md) | 200 | `declaration-track:5cbf9ba5fc007600b085766ad836a5c0a60a1426e61a2816000e9fde335d1cd9` |
| 25 | `def` | [polarSubmodule](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polarsubmodule-source-edition-2.md) | 207 | `declaration-track:951b9d665071c616428ad9ad98fdffe1bf1e58cabd7dc52ff9dddc4ca4d050ec` |
| 26 | `lemma` | [polarSubmodule_eq_polar](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polarsubmodule-eq-polar.md) | 214 | `result-track:d16fadfa9b6e70f3c37c646d92bde26d8651f3417982b8bb167b8f4cd9c455eb` |
| 27 | `theorem` | [mem_polar_iff](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/mem-polar-iff.md) | 217 | `result-track:3abe01a2ec122500eed81ece4046894f2a153391a1d28e3d3fd00a3b1105469d` |
| 28 | `lemma` | [polarSubmodule_eq_setOfPred](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polarsubmodule-eq-setofpred.md) | 220 | `result-track:d85cc6d966760d5ea4a954e9c650e274757e3e2638fefc9bd7d2614c37c6f115` |
| 29 | `lemma` | [mem_polarSubmodule](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/mem-polarsubmodule.md) | 227 | `result-track:b837544d9da20d7dac20ab0c0cf821a80aa358bfbce55478a107b7ad0bf0a255` |
| 30 | `theorem` | [zero_mem_polar](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/zero-mem-polar.md) | 232 | `result-track:8b6846170c78916a6898caccf2b230ffb651ffe67d71040530354c152d026883` |
| 31 | `theorem` | [polar_nonempty](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-nonempty.md) | 235 | `result-track:b6e440cb46713d16cbf2b8777624efbfc51140b25caf9b32233760c52397ef8e` |
| 32 | `theorem` | [polar_empty](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-empty-source-edition-2.md) | 241 | `result-track:afc0136ce8e0890b06a416756db752fd40b262b88e074c3a74557be323eccce0` |
| 33 | `theorem` | [polar_singleton](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-singleton-source-edition-2.md) | 245 | `result-track:ff87ea2f4fd44671fefb96b6badc40c0a721b8903199693cbc8da58cd2048221` |
| 34 | `theorem` | [mem_polar_singleton](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/mem-polar-singleton-source-edition-2.md) | 248 | `result-track:da0b63625115ff4487e1fe29560f5a5b93272770aad9dfcd95808829262a3a62` |
| 35 | `theorem` | [polar_zero](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-zero.md) | 251 | `result-track:00c30a6bc81f12d1f50bbb265b82eceb1094fec12ca062d0a77e665926729aa9` |
| 36 | `theorem` | [polar_univ](../../../../FunctionalAnalysis/PolarNamespacedPublic.lean/declarations/polar-univ.md) | 264 | `result-track:263c4374aa7b4e4ba13838561ab2e3fb09cbab0011fdc0c2f344224f65a7757e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69f96a2f68cdac29a8feb25577d4d8d998c3c1798dfea99dfca480ef776340d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Polar/Variant2839b9902548747433a10e1de63bca5f4d377a07475e66c5e38cefc1629fddea.lean","GRWTSK/_verification/specifications/Analysis/Polar/Variant2839b9902548747433a10e1de63bca5f4d377a07475e66c5e38cefc1629fddea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
