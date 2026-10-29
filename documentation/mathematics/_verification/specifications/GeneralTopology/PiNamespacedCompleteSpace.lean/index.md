# Verification target: Pi Namespaced Complete Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "132ac49b25b5c5558a173eacad5d8d8967610e1d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/index.md) · [Full source](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `132ac49b25b5c5558a173eacad5d8d8967610e1d`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Pi.uniformSpace](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformspace.md) | 30 | `declaration-track:065e530d7709d6b6b5902b26eb27ce38912c74cf1ac852c7111f305e1084fd16` |
| 2 | `lemma` | [Pi.uniformSpace_eq](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformspace-eq.md) | 35 | `result-track:506766abddba52f195f1763a9dfd87558bb925cf81c4e510a62346e8f2ae1228` |
| 3 | `theorem` | [Pi.uniformity](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformity.md) | 39 | `result-track:a3c04752e463f0bdb6cda9b2b3e17c8f5548bcb2347f19932c97ac37f276af05` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/instance.md) | 45 | `declaration-track:99f5e5b9b996b7e4a0a6235bf06b62ab2535bb278956c52279599b22d8c509c3` |
| 5 | `theorem` | [uniformContinuous_pi](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/uniformcontinuous-pi.md) | 50 | `result-track:7d4a628b5100700723c546053d69314ee5ec075ce4b4c85ea30be1da4b81e58b` |
| 6 | `theorem` | [Pi.uniformContinuous_proj](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformcontinuous-proj.md) | 56 | `result-track:6c56a18179d4afcda31bd21277d65d717e7b0ac0ad292ac0510a6efb2eea6505` |
| 7 | `theorem` | [Pi.uniformContinuous_precomp'](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformcontinuous-precomp-source-edition-2.md) | 59 | `result-track:fe65f47937f292d8b45e793ea159a2e9c984a4d86c0eb37d36a2380152391059` |
| 8 | `theorem` | [Pi.uniformContinuous_precomp](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformcontinuous-precomp.md) | 63 | `result-track:197757c9cf1a827681851b44819a5b2b0b040f9c1e6e6e9785587144ddcfcfd4` |
| 9 | `theorem` | [Pi.uniformContinuous_postcomp'](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformcontinuous-postcomp.md) | 67 | `result-track:3050bd92bee5fc19593833d179b8dfe88a510b860204722796e0a766b2fd6d39` |
| 10 | `theorem` | [Pi.uniformContinuous_postcomp](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformcontinuous-postcomp-source-edition-2.md) | 72 | `result-track:d5ce410f359eb3115c97f079932be0a2efa0f8a1ba94d588e4c1c68cb1f46ee4` |
| 11 | `lemma` | [Pi.uniformSpace_comap_precomp'](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformspace-comap-precomp-source-edition-2.md) | 76 | `result-track:c9aa8592ca3a1b434357459a4ec7cdf3909784bb22e4dcbc1c27645c3dfc952a` |
| 12 | `lemma` | [Pi.uniformSpace_comap_precomp](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformspace-comap-precomp.md) | 81 | `result-track:b4b9474f6da2025e8689ebfa06c47c5c4b5e45dd225251ee80d10baab0afdfdd` |
| 13 | `lemma` | [Pi.uniformContinuous_restrict](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformcontinuous-restrict.md) | 86 | `result-track:3522c7a9d3da05d1993c04d303298a56b2b4844fa3795994c4bc4199f80e75cf` |
| 14 | `lemma` | [Pi.uniformSpace_comap_restrict](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformspace-comap-restrict.md) | 90 | `result-track:20c6f2e1db2c72b258dec347b7870b414117fc2ef1064c838bee2397aef078d8` |
| 15 | `lemma` | [cauchy_pi_iff](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/cauchy-pi-iff.md) | 96 | `result-track:0af854f78d25eb6a905dba23f92dc7e77cbe83125636eb7b5fee8a11c3e9e6ea` |
| 16 | `lemma` | [cauchy_pi_iff'](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/cauchy-pi-iff-source-edition-2.md) | 100 | `result-track:db880c35521e7d8bfbacef55ca43f718d7bfe1e83a7d17eba019f51fdc7ee843` |
| 17 | `lemma` | [Cauchy.pi](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/cauchy-pi.md) | 104 | `result-track:06e4e6cf376ce7221aa0b03397720b3821d053eaff89d6ec3fdb341fa6e2e30a` |
| 18 | `instance` | [Pi.complete](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-complete.md) | 109 | `declaration-track:d673c8f33a0e7c37efb2ef70cb5ad68f532df744c8a86c21aae04f49c20c2750` |
| 19 | `lemma` | [Pi.uniformSpace_comap_restrict_sUnion](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/pi-uniformspace-comap-restrict-sunion.md) | 117 | `result-track:1b8063b8629d8bbecaaf9e7ca786cee49a40aaef4e54c3ee8db9bc3a6aa28622` |
| 20 | `theorem` | [CompleteSpace.iInf](../../../../GeneralTopology/PiNamespacedCompleteSpace.lean/declarations/completespace-iinf.md) | 124 | `result-track:411aae0598aaf601ec5d6ea606937587e5e7ec7b4c21091be8be8e99469e61cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da1995c7a3b71065f04ba0035054a979ddcecfd06639d8def077ab30303c62b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Pi/Variant8521ff0bb2f999072d29ef8eb44f04a87d19fab085b477e2a8b2c4bde434e356.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
