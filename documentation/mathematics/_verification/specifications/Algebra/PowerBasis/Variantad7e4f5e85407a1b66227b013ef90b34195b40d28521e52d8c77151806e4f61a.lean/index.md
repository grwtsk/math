# Verification target: GRWTSK.Algebra.PowerBasis.Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b212d3d246ecb1218921e7dd4acd97a576bd50d1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/index.md) · [Full source](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b212d3d246ecb1218921e7dd4acd97a576bd50d1`.

Source path: `GRWTSK/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoin.powerBasisAux](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/declarations/adjoin-powerbasisaux--aca3f6a695266406bd8f69b1.md) | 33 | `declaration-track:aca3f6a695266406bd8f69b14986695236d2cbfa740136969414c90b7483657a` |
| 2 | `def` | [adjoin.powerBasis](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/declarations/adjoin-powerbasis--4e9afeb4ed9ba73a36f2f40a.md) | 62 | `declaration-track:4e9afeb4ed9ba73a36f2f40a7808a61e997d51c5d843666a51fcaaf111b661b4` |
| 3 | `def` | [PowerBasis.ofGenMemAdjoin](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/declarations/powerbasis-ofgenmemadjoin--844626724d5b2e65b159fc78.md) | 77 | `declaration-track:844626724d5b2e65b159fc7854eb3ffbd652a032559674573ef9397c06e38c8a` |
| 4 | `theorem` | [repr_gen_pow_isIntegral](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/declarations/repr-gen-pow-isintegral--9a00b5ffd33ba3a4422fdf37.md) | 102 | `result-track:9a00b5ffd33ba3a4422fdf375262e66699c1ddd9a8d4fe68491746bb307208bc` |
| 5 | `theorem` | [repr_mul_isIntegral](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/declarations/repr-mul-isintegral--6d92801d68ff5949ea6c9252.md) | 135 | `result-track:6d92801d68ff5949ea6c92523e54071b4d2b9ecc1c55b11f2aa5d4dcaa5beda1` |
| 6 | `theorem` | [repr_pow_isIntegral](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/declarations/repr-pow-isintegral--1b7874fb3c2b4372f4c046d9.md) | 154 | `result-track:1b7874fb3c2b4372f4c046d9b26a5787272ee3be0772c9e4022dcf5a072614ff` |
| 7 | `theorem` | [toMatrix_isIntegral](../../../../../Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean/declarations/tomatrix-isintegral--60ff13e10d6a1e8d3c5dcb93.md) | 178 | `result-track:60ff13e10d6a1e8d3c5dcb93c17362f404a56d1f454c28afabcab119f1d2c856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2b9ecd6e76206ae9da0a1daf2802a03f640161b66074cd696b2f0b230625f2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean","GRWTSK/_verification/specifications/Algebra/PowerBasis/Variantad7e4f5e85407a1b66227b013ef90b34195b40d28521e52d8c77151806e4f61a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
