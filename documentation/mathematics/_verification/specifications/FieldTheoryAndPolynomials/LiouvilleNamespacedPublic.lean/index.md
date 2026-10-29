# Verification target: Liouville Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1f193a89b8edb0079ab0246d44410beede93f44",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Liouville/Variant81b708dd37db6470d70d9417261eba8fa819b8c6d13f78e7ed1dff542f5a2039.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1f193a89b8edb0079ab0246d44410beede93f44`.

Source path: `GRWTSK/Algebra/Liouville/Variant81b708dd37db6470d70d9417261eba8fa819b8c6d13f78e7ed1dff542f5a2039.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Liouville/Variant81b708dd37db6470d70d9417261eba8fa819b8c6d13f78e7ed1dff542f5a2039.lean.json)

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
| 1 | `class` | [IsLiouville](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/declarations/isliouville.md) | 53 | `declaration-track:6e95944d445cf3bf3b559111f50808af2eabe1b0d979f2e9f5848887da4647f2` |
| 2 | `instance` | [IsLiouville.rfl](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/declarations/isliouville-rfl.md) | 59 | `declaration-track:a99bb36043056112406cce1a26c88cd9b2cb7907abcea145ce6b790ff8f15c0c` |
| 3 | `lemma` | [IsLiouville.trans](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/declarations/isliouville-trans.md) | 64 | `result-track:abdc56e7c43b52f7b6a987d581a173b4aa17f90508cc7999b57e3708d033d9e6` |
| 4 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/declarations/instance.md) | 95 | `declaration-track:28a885c20b29a8941cb68ae08cd1c4c4465e8b45ad08a731b5a743c685685e53` |
| 5 | `lemma` | [IsLiouville.equiv](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/declarations/isliouville-equiv.md) | 118 | `result-track:8ea8c9ca3449e7096ebb48ce039f106e57db9d9b63420d679eb89990ea6d1164` |
| 6 | `instance` | [isLiouville_of_finiteDimensional_galois](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/declarations/isliouville-of-finitedimensional-galois.md) | 131 | `declaration-track:6518a722faabf1f43bd6861f3038f3db4e7b5e9aa3b8b1ce03ca640204732f96` |
| 7 | `instance` | [isLiouville_of_finiteDimensional](../../../../FieldTheoryAndPolynomials/LiouvilleNamespacedPublic.lean/declarations/isliouville-of-finitedimensional.md) | 207 | `declaration-track:5bf044b36311e7f211b9bcab5919e87caaee86b2874592e9df5773fa2dede7c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=692ae5aefbb4b9a5d6c4aceb1d2498529621a7d5415ca23fb1580fda3542191a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Liouville/Variant81b708dd37db6470d70d9417261eba8fa819b8c6d13f78e7ed1dff542f5a2039.lean","GRWTSK/_verification/specifications/Algebra/Liouville/Variant81b708dd37db6470d70d9417261eba8fa819b8c6d13f78e7ed1dff542f5a2039.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
