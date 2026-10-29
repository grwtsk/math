# Verification target: Algebra Field Defs Namespaced NNRat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cce6cbed90b6b948ff151b2a71cbcea72f501039",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cce6cbed90b6b948ff151b2a71cbcea72f501039`.

Source path: `GRWTSK/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Init` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NNRat.castRec](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/nnrat-castrec.md) | 73 | `declaration-track:3e1cdfd35388bb2ad09cac6bbe1e03c07c48aa461ae64d9f8511acf0d4347af2` |
| 2 | `def` | [Rat.castRec](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/rat-castrec.md) | 81 | `declaration-track:5fc32a25070111d6764ad2d242d191b00c1f1d44765f88b7b8dd1fc82c1f8e7b` |
| 3 | `class` | [DivisionSemiring](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/divisionsemiring.md) | 92 | `declaration-track:366539ed825b36c27c27316ca091f8deddf5f542d9b9fec8dec2a55edf3e31ce` |
| 4 | `class` | [DivisionRing](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/divisionring.md) | 120 | `declaration-track:271f5a77157f10c1fdaeb1db92dcb7f0ebafe26e2b9422018940641fc1c7a6e0` |
| 5 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/instance.md) | 160 | `declaration-track:20e8f36b8c7cd5be7c59ead3a1177e009c8a0eee0d9a12ea1e4254b3313b6b0a` |
| 6 | `class` | [Semifield](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/semifield.md) | 172 | `declaration-track:8d6c4c4c666d1d9436ef4f4dc6a5eeb4814bacdc22ef0d202f91b186830701ab` |
| 7 | `class` | [Field](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/field.md) | 184 | `declaration-track:35450d1ae457723beb4a5a40c370882a9cf7e179d925d6fe02293bfb4327c731` |
| 8 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/instance-source-edition-2.md) | 187 | `declaration-track:75b8bd1a767f24565de666b5aed5a3e8a2e98db4df9ecd3fc8344335fe0a50a4` |
| 9 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/instance-source-edition-3.md) | 192 | `declaration-track:9fb23416bab754dad87958a8fc893ff6d21a934d7575e63c5f496a76ab70307b` |
| 10 | `lemma` | [cast_def](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/cast-def.md) | 194 | `result-track:b5313adfb14fdd8517d5317b9b42b46b59a6e632aa56a3aca217ea3534320804` |
| 11 | `lemma` | [smul_def](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/smul-def.md) | 195 | `result-track:673af0ae4bdb7f50da1f34830645552a33a0602646e4ca5e1f3f898c746c5af0` |
| 12 | `lemma` | [smul_one_eq_cast](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/smul-one-eq-cast-source-edition-2.md) | 199 | `result-track:23fa0d93d634fdf1a48e8cb6a1e7fbb5aa38c15456b607641b891fc4b79553fc` |
| 13 | `lemma` | [cast_def](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/cast-def-source-edition-2.md) | 206 | `result-track:bcd5d5e5199d8b330ab5ef9c0df5f41c2a8d41869ed6d9977829ec51c922a048` |
| 14 | `lemma` | [cast_mk'](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/cast-mk.md) | 208 | `result-track:3634522daf26791f2bf791b5b640fe09f78e13aa2679df38335103ea2529bc8e` |
| 15 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/instance-source-edition-4.md) | 210 | `declaration-track:a290147f46018d1c6c0ad352a97490035221ba1d8065ccf4a48720d19498f403` |
| 16 | `theorem` | [smul_def](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/smul-def-source-edition-2.md) | 213 | `result-track:f4df99839d80c4661dcca37e8c670d2ec344c7cf9d2d7f1edf5e3a30e3afe774` |
| 17 | `theorem` | [smul_one_eq_cast](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/smul-one-eq-cast.md) | 216 | `result-track:0606cababd144c14b2da181ad82c5c4b87f1dc1ad319630e6735ffef53640847` |
| 18 | `theorem` | [Rat.ofScientific_eq_ofScientific](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedNNRat.lean/declarations/rat-ofscientific-eq-ofscientific.md) | 223 | `result-track:ff76e1e29e25851420a5a79f381c3c45368d123fc23220e385c4f909ebe4ea09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c728441acc5ffc6b51734d047e3c7d34adc3083f12ca857c4b7fe2c26597015 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variant53d1b70930e8ad0c7782df63ce2afd897f35221f47717b0668394f5ea41f52bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
