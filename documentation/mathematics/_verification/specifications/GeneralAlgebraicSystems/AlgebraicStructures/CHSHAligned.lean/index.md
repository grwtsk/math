# Verification target: CHSHAligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c43e8fc13e4da57d058b917156bd5bdeb6dbf60",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CHSHAligned.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CHSHAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c43e8fc13e4da57d058b917156bd5bdeb6dbf60`.

Source path: `GRWTSK/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCHSHTuple](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CHSHAligned.lean/declarations/ischshtuple.md) | 85 | `declaration-track:b14c971996276263494f29bf992fa60924f25c1739e8c853a33884f8ee99f9de` |
| 2 | `theorem` | [CHSH_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CHSHAligned.lean/declarations/chsh-id.md) | 103 | `result-track:fffd5f8e46c8eb8fee0a6d56b7b7fde2aef9ba3492c9656ffc9d04d77b79976d` |
| 3 | `theorem` | [CHSH_inequality_of_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CHSHAligned.lean/declarations/chsh-inequality-of-comm.md) | 124 | `result-track:7d8736702c0f0e6a0a1a617a2da2cfa85d0cc73d16403565ecc9f637c61c9bd9` |
| 4 | `theorem` | [tsirelson_inequality_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CHSHAligned.lean/declarations/tsirelson-inequality-aux.md) | 170 | `result-track:746d93385da698b373f6cd44f6cae68faab3ade1557e13959b277b312f524909` |
| 5 | `theorem` | [sqrt_two_inv_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CHSHAligned.lean/declarations/sqrt-two-inv-mul-self.md) | 177 | `result-track:1f4319ab31a3f97221ded7a8d987cde9ac83a83c9821b26e70fefb8a0fa84e80` |
| 6 | `theorem` | [tsirelson_inequality](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CHSHAligned.lean/declarations/tsirelson-inequality.md) | 195 | `result-track:7f1b63588818a29f12e2049ad1503ec759dd27afc53608c6b5c2bf9f6346a2a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba60aac0c6df7558e21fef059fd607f97881a57121f36391167eba942dafb0d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean","GRWTSK/_verification/specifications/Algebra/CHSH/Variant47d9840512321f22866139721a9c97f36d78461d52010a54753956fac220a845.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
