# Verification target: BKLNWA2 Pow2 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18a79875802b97aac86e6f170926b759417f879f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/index.md) · [Full source](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18a79875802b97aac86e6f170926b759417f879f`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.FinSumExpand` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [f](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/f.md) | 33 | `declaration-track:58c7eaa6d07fa257ff38e8dda3b407432af64845283c28710b6e256f7dedbd31` |
| 2 | `lemma` | [two_pow_eq_exp_log](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/two-pow-eq-exp-log.md) | 37 | `result-track:ac4a1aceea186257f7f4917b7aa0e90482a1cd3ad9ed2248ec38edc7780a8cdf` |
| 3 | `lemma` | [floor_log_two_pow](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/floor-log-two-pow.md) | 41 | `result-track:665fb6167321fa756d8fc2e80ee3ce3d1dbb7740be3c864f1f0e32de6031a0e5` |
| 4 | `theorem` | [pow29_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow29-upper.md) | 46 | `result-track:7162ba808028de83e09be31cfe967232485ed90d662859aceb0d90fdab957bc0` |
| 5 | `theorem` | [pow37_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow37-upper.md) | 56 | `result-track:1cefdcaa966f1f8f3ab14198f364ecd68c5696be6dade9e754d535ff937320fa` |
| 6 | `theorem` | [pow44_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow44-upper.md) | 66 | `result-track:feff4b5d0597b22fa9cba04a72e2a0efd8851c65a37cfe32b088294a8eea5028` |
| 7 | `theorem` | [pow51_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow51-upper.md) | 76 | `result-track:ab80bcc6d04dbf889218ae41c8d7a4035b2405f72b2d4ce2c9296996c7770c91` |
| 8 | `theorem` | [pow58_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow58-upper.md) | 86 | `result-track:f1f167729affcb6f59377fe9408bc568bce1fa0ed033c656a0a03ca11bd05097` |
| 9 | `theorem` | [pow63_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow63-upper.md) | 96 | `result-track:e583b01f443de766d2601ef7783ef3f12cfe981faaf42235e4328f457c93dd45` |
| 10 | `theorem` | [pow145_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow145-upper.md) | 113 | `result-track:963aed11c3c9aed6ba81edfbd3627c057567bd0bc391db4a5ced6ab52f0864a3` |
| 11 | `theorem` | [pow217_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow217-upper.md) | 117 | `result-track:d667ceb8b1cd287ecc850b4367c96a0dfa02fd96dbd1c976342a65a10b4fd616` |
| 12 | `theorem` | [pow289_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow289-upper.md) | 121 | `result-track:5bbc815b781887788899f12ed02ba316a7fe675718faaa4ea327ff66484e5ab4` |
| 13 | `theorem` | [pow361_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow361-upper.md) | 125 | `result-track:2a950d9017d90777c0c1d76684a7c9f974efb6808667d5f945c3d9963d32844f` |
| 14 | `theorem` | [pow433_upper](../../../../RealFunctions/BKLNWA2Pow2Namespaced.lean/declarations/pow433-upper.md) | 129 | `result-track:2a360c41a739334f10181c1fda0125b167b87aa868bc40f195c8c61ee3ea6fce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0ffc972298c8b7a8867903c1eb04eafd170f69cde896992147b5b54e7caed80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
