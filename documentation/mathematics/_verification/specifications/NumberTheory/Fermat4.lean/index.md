# Verification target: Fermat4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5d02812a54e9265ede7657a1ab72565b0c817d2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/Fermat4.lean/index.md) · [Full source](../../../../NumberTheory/Fermat4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5d02812a54e9265ede7657a1ab72565b0c817d2`.

Source path: `GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.PythagoreanTriples` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Fermat42](../../../../NumberTheory/Fermat4.lean/declarations/fermat42.md) | 25 | `declaration-track:023f500daec9cf45a905472dd4b3a1692a81e40361bfb20f2da04677500d008d` |
| 2 | `theorem` | [comm](../../../../NumberTheory/Fermat4.lean/declarations/comm.md) | 31 | `result-track:0296487ca70b5da480361bc997177d09f04307ec4257ee1cf86ef591015ee42b` |
| 3 | `theorem` | [mul](../../../../NumberTheory/Fermat4.lean/declarations/mul.md) | 37 | `result-track:883569c7f5a389ccaafdee83cb01066f11b1d3a231acedc1407d2ca05e3b4ac5` |
| 4 | `theorem` | [ne_zero](../../../../NumberTheory/Fermat4.lean/declarations/ne-zero.md) | 57 | `result-track:867a79ab306c3984a5c3510f1407abe40564ebd48d6fc9e030d8e52a27b51c65` |
| 5 | `def` | [Minimal](../../../../NumberTheory/Fermat4.lean/declarations/minimal.md) | 66 | `declaration-track:b9a7f73f3acbaae48b8c8896a3a64babfd948e5f8c2b5c38986b034ee203ff23` |
| 6 | `theorem` | [exists_minimal](../../../../NumberTheory/Fermat4.lean/declarations/exists-minimal.md) | 71 | `result-track:c97bc313c869534cecda4cd369dae14df3cbe671d7899e7e726d18a4add9cf9a` |
| 7 | `theorem` | [coprime_of_minimal](../../../../NumberTheory/Fermat4.lean/declarations/coprime-of-minimal.md) | 88 | `result-track:105745aa4669597672ac5a56e2438a69aca0e080666ec952a1e595cf6b415886` |
| 8 | `theorem` | [minimal_comm](../../../../NumberTheory/Fermat4.lean/declarations/minimal-comm.md) | 108 | `result-track:7d4d499483882588dcf7f6203f24949fe56cccae37adccbfff1902e1440af123` |
| 9 | `theorem` | [neg_of_minimal](../../../../NumberTheory/Fermat4.lean/declarations/neg-of-minimal.md) | 113 | `result-track:d44763760f2cad100b39f6c0ba986c05c27fe4425435270591e7f8f669643d90` |
| 10 | `theorem` | [exists_odd_minimal](../../../../NumberTheory/Fermat4.lean/declarations/exists-odd-minimal.md) | 123 | `result-track:358f08ed7f27d26ca4e0fd116ba7e4383eb26e5c9d5fc7fad1e8787bfbd0fdaa` |
| 11 | `theorem` | [exists_pos_odd_minimal](../../../../NumberTheory/Fermat4.lean/declarations/exists-pos-odd-minimal.md) | 140 | `result-track:668d1147d85c6b8b4b769033539c0e08133ffe67c0af6cfed159d6d91f0c4b6b` |
| 12 | `theorem` | [Int.coprime_of_sq_sum](../../../../NumberTheory/Fermat4.lean/declarations/int-coprime-of-sq-sum-source-edition-2.md) | 153 | `result-track:1ffa374bbe9f8ca6d063b637c6e13d76da7df6ac4fcd388e31b43fa1789ad16b` |
| 13 | `theorem` | [Int.coprime_of_sq_sum'](../../../../NumberTheory/Fermat4.lean/declarations/int-coprime-of-sq-sum.md) | 158 | `result-track:010b52b78be718044b1263adbedcc0b893ef28c06a68b61daf801f734ace86f5` |
| 14 | `theorem` | [not_minimal](../../../../NumberTheory/Fermat4.lean/declarations/not-minimal.md) | 168 | `result-track:3a3005aac862e7ae53d8339b0c93602a1fe89cf1a664b67a9824bc636d02e877` |
| 15 | `theorem` | [not_fermat_42](../../../../NumberTheory/Fermat4.lean/declarations/not-fermat-42.md) | 300 | `result-track:8a1d6c64603e3f720c01abffa28f102edbbee9fdd412bbaf3792647ff2ff44aa` |
| 16 | `theorem` | [not_fermat_4](../../../../NumberTheory/Fermat4.lean/declarations/not-fermat-4.md) | 307 | `result-track:496f89f16bead30676d63e22a8d1ea9516b3d4a6508f7d1003be4ea1659f2d81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c31a7be8d1a2c5879296ac3df2901e15a0cbe7556e3c8bc28d53bd83feaf710b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean","GRWTSK/_verification/specifications/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
