# Verification target: GRWTSK.Algebra.UniversalAlgebra.ChangeOfRings.Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d1f1b93a815a612299509531e925bfec8998efc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean/index.md) · [Full source](../../../../../../Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d1f1b93a815a612299509531e925bfec8998efc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.ChangeOfRings` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrictScalarsObj](../../../../../../Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean/declarations/restrictscalarsobj--476fe6153147a0e3396da4bd.md) | 36 | `declaration-track:476fe6153147a0e3396da4bd435b66232831ad92de4b16e2ae3659ccc818c455` |
| 2 | `def` | [restrictScalars](../../../../../../Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean/declarations/restrictscalars--899d5492246d0bd03a936e67.md) | 56 | `declaration-track:899d5492246d0bd03a936e6753f4f85bb9f8ad1c19ab9bf520ce260b0afdf2e3` |
| 3 | `instance` | [(anonymous)](../../../../../../Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean/declarations/instance--ac1a7816d63c758345c7b276.md) | 65 | `declaration-track:ac1a7816d63c758345c7b276c44812117a7631a84a4b760db1c7d38c3489043f` |
| 4 | `instance` | [(anonymous)](../../../../../../Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean/declarations/instance--327065aff3205943afc670c7.md) | 67 | `declaration-track:327065aff3205943afc670c7f9cfcd880bca0dac7ba038d6092d98d8f1910f92` |
| 5 | `instance` | [(anonymous)](../../../../../../Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean/declarations/instance--5c28899e25fc0c13b79d40c0.md) | 69 | `declaration-track:5c28899e25fc0c13b79d40c0d01d0791cbd317cf10ff585e61fc6c139852272b` |
| 6 | `def` | [restrictScalarsCompToPresheaf](../../../../../../Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean/declarations/restrictscalarscomptopresheaf--826d3bdcf4eaf5c1d6086db1.md) | 74 | `declaration-track:826d3bdcf4eaf5c1d6086db1fff4577394596279062d4a590ea7057ae31fa3f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a42568c36d80b5bb0fd697c8c44534bfaca7e557b95ea263f5cb927fcf1f103 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/ChangeOfRings/Variant438370e5067bd93e54dc73d4ded9b2af6a4d9681453de739eee413c42ae6a883.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
