# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3003e87b573abf59c0ca6e6902c9c01cee5bcd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean/index.md) · [Full source](../../../../../../Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3003e87b573abf59c0ca6e6902c9c01cee5bcd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Azumaya.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [AlgHom.mulLeftRight_bij](../../../../../../Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean/declarations/alghom-mulleftright-bij--ce5d6d38ee12a238dadeaae6.md) | 37 | `result-track:ce5d6d38ee12a238dadeaae626ad684be446c684c74969212fc346078a40836b` |
| 2 | `abbrev` | [tensorEquivEnd](../../../../../../Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean/declarations/tensorequivend--948362435af181a66cb682b3.md) | 42 | `declaration-track:948362435af181a66cb682b337e647cb0a19e5a1914cd3d4797069e298150c97` |
| 3 | `lemma` | [coe_tensorEquivEnd](../../../../../../Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean/declarations/coe-tensorequivend--3964c046a83588c6debe2f9c.md) | 45 | `result-track:3964c046a83588c6debe2f9cb2c0a7607219eeb248ac2386422f305ec8e4775c` |
| 4 | `instance` | [id](../../../../../../Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean/declarations/id--f4f67b413c4aeae3ed9309f7.md) | 48 | `declaration-track:f4f67b413c4aeae3ed9309f794b3ef57e5931d223bfc90076dfcc5278e752308` |
| 5 | `lemma` | [mulLeftRight_comp_congr](../../../../../../Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean/declarations/mulleftright-comp-congr--9c650a1793f0f8cb09687986.md) | 65 | `result-track:9c650a1793f0f8cb09687986d3242b9880ef46ba5f00984364220b85f45e079a` |
| 6 | `theorem` | [of_AlgEquiv](../../../../../../Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean/declarations/of-algequiv--3a4679926502c7b87d240236.md) | 76 | `result-track:3a4679926502c7b87d240236853baf8e823aeb5b8faafb937d2a57fd05cf7dff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bb437dbde548fda904064cbf4ad85803c0ec51b95df64133f0a13ef2e6d3517 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantfbe3b3d9bf3366db0fa45fe66d09afc588bd51fb7bcc454848e4b24948dad0b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
