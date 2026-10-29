# Verification target: Algebra Field Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eb4188ebeb94152c4c99a3a310f74e3ff607340",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Varianta31c81f28618f6334ebafaf256910d3fbe44e3b2ed910cb8cad6103dabaea846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eb4188ebeb94152c4c99a3a310f74e3ff607340`.

Source path: `GRWTSK/Algebra/Defs/Varianta31c81f28618f6334ebafaf256910d3fbe44e3b2ed910cb8cad6103dabaea846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Varianta31c81f28618f6334ebafaf256910d3fbe44e3b2ed910cb8cad6103dabaea846.lean.json)

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
| 1 | `def` | [NNRat.castRec](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/nnrat-castrec.md) | 75 | `declaration-track:eb629b07f9a5bd370e6bdd7a90b3da819b418f7ed9330fba993b5223a64f40b9` |
| 2 | `def` | [Rat.castRec](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/rat-castrec.md) | 83 | `declaration-track:3d8fd09d7ea87b702bae87145f9e3ff036e3d10da2b81ba8c73b5ef0cc4bf520` |
| 3 | `class` | [DivisionSemiring](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/divisionsemiring.md) | 94 | `declaration-track:56e0c664560aeda3b0e7c943b3a51e138495f36e7d20de8679d1b457e34f2234` |
| 4 | `class` | [DivisionRing](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/divisionring.md) | 124 | `declaration-track:c66bc469eb06ca641a632542581c9ead64170505a8467efeb04fc0234d366366` |
| 5 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/instance.md) | 164 | `declaration-track:22ae9d221a8cf7af97ee258aaf80c830ad8f4f103d1e0b779177199b4d363544` |
| 6 | `class` | [Semifield](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/semifield.md) | 176 | `declaration-track:2399260a33c3faaf4e37301785a7d737f1ddc66c5670fabea70bebf0e8df2dd1` |
| 7 | `class` | [Field](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/field.md) | 188 | `declaration-track:0d78d6a6af12389cdff2498385cf31d34f8bd0ba64233fa1a25ebc1abeb357c1` |
| 8 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 191 | `declaration-track:9fa3ff1a90458943ddb087dbf57207f536f7bd7381c6cb93f6156cabed10acb1` |
| 9 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 196 | `declaration-track:2e9491d71c0cce38a4c214518f8408ca071c2160ee22702a34ff6ef85865a6e2` |
| 10 | `lemma` | [cast_def](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/cast-def.md) | 198 | `result-track:42b6d7c28c106f8f1955698a51db9b93ecede506c870b9a0ec072da075b686d3` |
| 11 | `lemma` | [smul_def](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/smul-def.md) | 199 | `result-track:70db8a7cf8eae3c999480e4afdb74d40722850049f2b38830057d0325a87cab1` |
| 12 | `lemma` | [smul_one_eq_cast](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/smul-one-eq-cast.md) | 203 | `result-track:013a9abf286dcc2491513b5d30508c59a97528353673cd97b73e6b4e08233fb2` |
| 13 | `lemma` | [cast_def](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/cast-def-source-edition-2.md) | 210 | `result-track:e72e39fc28df3465a20b0d71c5f3e2a23097867999197617e112d577ee810e93` |
| 14 | `lemma` | [cast_mk'](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/cast-mk.md) | 212 | `result-track:1f63ee9f8ea4406c90c79d13b3922555ff36ff872f1f31d1c9a2b490caba6ca6` |
| 15 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 214 | `declaration-track:4a83e3353949bb81df2345593264e8264a04f95ed16df98eb4107f729b464285` |
| 16 | `theorem` | [smul_def](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/smul-def-source-edition-2.md) | 217 | `result-track:b0bfe821062aaa00ed4aa600cdea9f1f33fea23fc7d12c0c60dbba475f2fd0d9` |
| 17 | `theorem` | [smul_one_eq_cast](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/smul-one-eq-cast-source-edition-2.md) | 220 | `result-track:d422bd550ea731bb1f294351f2569837c657da31a74e4535c9f5d0ba9d8a4cb6` |
| 18 | `theorem` | [Rat.ofScientific_eq_ofScientific](../../../../FieldTheoryAndPolynomials/AlgebraFieldDefsNamespacedPublic.lean/declarations/rat-ofscientific-eq-ofscientific.md) | 227 | `result-track:d79f5f81e69c85682ec9a1b1687d0047948a17a567d29a964dfae9d28c096f3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be50da027048a5f2663f828a52a1bc0d7ca72f12aed0077df8b90f0ce37b1ad3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Varianta31c81f28618f6334ebafaf256910d3fbe44e3b2ed910cb8cad6103dabaea846.lean","GRWTSK/_verification/specifications/Algebra/Defs/Varianta31c81f28618f6334ebafaf256910d3fbe44e3b2ed910cb8cad6103dabaea846.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
