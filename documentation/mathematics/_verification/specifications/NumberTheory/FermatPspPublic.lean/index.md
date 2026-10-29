# Verification target: Fermat Psp Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7ab78ff65ee83ba68b27eec272f829a971f7316",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FermatPspPublic.lean/index.md) · [Full source](../../../../NumberTheory/FermatPspPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7ab78ff65ee83ba68b27eec272f829a971f7316`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean.json)

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
| 1 | `def` | [ProbablePrime](../../../../NumberTheory/FermatPspPublic.lean/declarations/probableprime.md) | 55 | `declaration-track:880556ada8174ae539e8c41a58b7fc25d678322f6cee28a620321d53bfbf8cb3` |
| 2 | `theorem` | [probablePrime_iff_zmod_one](../../../../NumberTheory/FermatPspPublic.lean/declarations/probableprime-iff-zmod-one.md) | 58 | `result-track:3ceb02bf620c05c0e5297683b16d231b04c984772aa0efd4c993db593669b5cf` |
| 3 | `def` | [FermatPsp](../../../../NumberTheory/FermatPspPublic.lean/declarations/fermatpsp.md) | 67 | `declaration-track:d59826f7b4391a88a9c1398b0ca2d088f43e603bf274bcfa8914df396555751d` |
| 4 | `instance` | [decidableProbablePrime](../../../../NumberTheory/FermatPspPublic.lean/declarations/decidableprobableprime.md) | 70 | `declaration-track:44f4de9823072b66b5d10fe91567562d29bcd2a1090b459a4473eb5a717f30cd` |
| 5 | `instance` | [decidablePsp](../../../../NumberTheory/FermatPspPublic.lean/declarations/decidablepsp.md) | 73 | `declaration-track:a33fd5b1f0a08a78a717044755896c646a89128c760c444a807d277297ad275f` |
| 6 | `theorem` | [coprime_of_probablePrime](../../../../NumberTheory/FermatPspPublic.lean/declarations/coprime-of-probableprime.md) | 79 | `result-track:f54005de3d4dcc13309490743282e358a2bede63bc201c7b309b2c3a0bccf362` |
| 7 | `theorem` | [probablePrime_iff_modEq](../../../../NumberTheory/FermatPspPublic.lean/declarations/probableprime-iff-modeq.md) | 105 | `result-track:1375926b4bb8c2dbfc6c2c8ca29724005b23664965b580d0a0af3b1e3bf75a0d` |
| 8 | `theorem` | [coprime_of_fermatPsp](../../../../NumberTheory/FermatPspPublic.lean/declarations/coprime-of-fermatpsp.md) | 122 | `result-track:eccb4065e5d96bd1f6e3fed7c9ddc1ac4299de167d7e3387657e4e41fa705004` |
| 9 | `theorem` | [fermatPsp_base_one](../../../../NumberTheory/FermatPspPublic.lean/declarations/fermatpsp-base-one.md) | 128 | `result-track:50b7430fe6ecf66ac104b931caadbdfe798afe10e7a6f82f27a0266061f67d6d` |
| 10 | `theorem` | [a_id_helper](../../../../NumberTheory/FermatPspPublic.lean/declarations/a-id-helper.md) | 136 | `result-track:936b07c8c262046ad2654a4462753c92d3e7f0b62d100be43d721d6e8136ef2a` |
| 11 | `theorem` | [b_id_helper](../../../../NumberTheory/FermatPspPublic.lean/declarations/b-id-helper.md) | 144 | `result-track:551fcdb93b46236d5a462acceb0c4cf4d800d43aae71463711a8386ac2297955` |
| 12 | `theorem` | [AB_id_helper](../../../../NumberTheory/FermatPspPublic.lean/declarations/ab-id-helper.md) | 152 | `result-track:d93a20f1c756f485226f7b67d26f068b4ee9870863350332e243eed4c3241016` |
| 13 | `theorem` | [bp_helper](../../../../NumberTheory/FermatPspPublic.lean/declarations/bp-helper.md) | 161 | `result-track:009ca2b7cfcf16440cf7795b679367061f55cd6e1eef4200053b584c95446a45` |
| 14 | `def` | [psp_from_prime](../../../../NumberTheory/FermatPspPublic.lean/declarations/psp-from-prime.md) | 190 | `declaration-track:e348745ca42151dbc737a5623ce6f7338880e9bdcb8802c202767ebff3a07134` |
| 15 | `theorem` | [psp_from_prime_psp](../../../../NumberTheory/FermatPspPublic.lean/declarations/psp-from-prime-psp.md) | 199 | `result-track:fdc235b26cd7196a168755343d332df85c356fca9d13208f01e3f9793e531a10` |
| 16 | `theorem` | [psp_from_prime_gt_p](../../../../NumberTheory/FermatPspPublic.lean/declarations/psp-from-prime-gt-p.md) | 295 | `result-track:7cd392c92d6c8e8bd2fdeea3b4990de86be09bb3fbc7e38c38f40e07ab343f35` |
| 17 | `theorem` | [exists_infinite_pseudoprimes](../../../../NumberTheory/FermatPspPublic.lean/declarations/exists-infinite-pseudoprimes.md) | 310 | `result-track:2574eeaa80d334580c7c436a94bb36842c3ab3ea823eaa99c9d3320b399f1dcd` |
| 18 | `theorem` | [frequently_atTop_fermatPsp](../../../../NumberTheory/FermatPspPublic.lean/declarations/frequently-attop-fermatpsp.md) | 344 | `result-track:6f3bc41b94919ea516c8543521a71c974da984c3433492000f5ce7e677a100df` |
| 19 | `theorem` | [infinite_setOfPred_pseudoprimes](../../../../NumberTheory/FermatPspPublic.lean/declarations/infinite-setofpred-pseudoprimes.md) | 352 | `result-track:352dee54b88762a2fb5e7b13d8e17d2a9fc228edcf46397ef553c8e9db03bea7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2433033004559ccbd506cd58d9617a6cffaf8ec3ba1a78e18d2f56263ad0d1a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/FermatPsp/Varianta1714b3217c0434032198bc4b41c26c1180c0c2b414ed4644ac04e1c99c08c6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
