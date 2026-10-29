# Verification target: Applicative Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "225972edaf1d1a72ed65d5ac72c967d828ac0289",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantbecd6099700ed8c25035229a297eecc97e1962049577099c1aa8558a8defac0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `225972edaf1d1a72ed65d5ac72c967d828ac0289`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantbecd6099700ed8c25035229a297eecc97e1962049577099c1aa8558a8defac0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantbecd6099700ed8c25035229a297eecc97e1962049577099c1aa8558a8defac0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Functor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Applicative.map_seq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/applicative-map-seq-map.md) | 38 | `result-track:05675f3900c447ba990007a1fdd02e4fbdbc03b20ba2f0917edcd1f9ef968cd8` |
| 2 | `theorem` | [Applicative.pure_seq_eq_map'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/applicative-pure-seq-eq-map.md) | 42 | `result-track:ae12ae110d4ef0964caa395793b48eaf61f043186b3459f2656286d69b30251c` |
| 3 | `theorem` | [Applicative.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/applicative-ext.md) | 45 | `result-track:77160aa68062e38db3181c3f9819b8ed8065b1ef6d460619e6e5a2d98c764afa` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/instance-source-edition-4.md) | 75 | `declaration-track:33250cf3b1c07f24c733247b5a7c91798c17771bdff09f3cd5ffe60324538e23` |
| 5 | `theorem` | [map_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/map-pure.md) | 90 | `result-track:0b2b97668bbe1c4a81c03df6c7727afefbf219461d7bb2e508a4a33806f8cfd4` |
| 6 | `theorem` | [seq_pure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/seq-pure.md) | 93 | `result-track:608d04ed4687dbf7ad5a73debfb35f134cbb72acaaa23c5340d92e29ecf15e1e` |
| 7 | `theorem` | [seq_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/seq-assoc.md) | 96 | `result-track:116ff74022e24241f5fd9e556a8e53525f862c4bbf04987bb1c1f508e7057717` |
| 8 | `theorem` | [pure_seq_eq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/pure-seq-eq-map.md) | 100 | `result-track:03e1260fa2fc05e6d06483bf9490e96707f914c731819031cf30a1e74d582118` |
| 9 | `instance` | [instLawfulApplicativeComp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/instlawfulapplicativecomp.md) | 104 | `declaration-track:202ac85600e85db72375ff01053dbba2e173ca5c17fb270f006462496ff02282` |
| 10 | `theorem` | [applicative_id_comp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/applicative-id-comp.md) | 112 | `result-track:d40134fa158c94f69208f58e82d682f7befbc8c7924e17f49b8d161ffc543454` |
| 11 | `theorem` | [applicative_comp_id](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/applicative-comp-id.md) | 117 | `result-track:9cd87665c95351719eb5d69a9fddfa13d2be74c034472b51c93bea53d82ae729` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/instance-source-edition-2.md) | 124 | `declaration-track:14cdabdd41de3bc6b2ed697497518ce04d08b69965b80623aa7b261631b536dd` |
| 13 | `theorem` | [Comp.seq_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/comp-seq-mk.md) | 142 | `result-track:6910cccac09cb7ade5bdd370f15d84e3c422915216cad8254cc30c519182a9ba` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/instance.md) | 149 | `declaration-track:0b9387958a45c59205b77bb9067c29d621db518b3e55fec82b02a3e8ca4396f3` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/instance-source-edition-5.md) | 156 | `declaration-track:7bbbf2bdc479fccfc1d5e55161f0d76e8950ec309de4a8619eb73c0947341c26` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/instance-source-edition-6.md) | 164 | `declaration-track:98bb82bedbd54be7fbe3458160c567d1786f59888d19a6406b847d717cb77709` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ApplicativeNamespaced.lean/declarations/instance-source-edition-3.md) | 168 | `declaration-track:1aefa892c4b5ef521a8b1f2d5aa3d47bb295b46473b29988aed6e483f10a6d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d84b2392fd5abcbcc096bd943bb281c1c5f686d75988474fd7dc8bd99c59ed2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantbecd6099700ed8c25035229a297eecc97e1962049577099c1aa8558a8defac0b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Applicative/Variantbecd6099700ed8c25035229a297eecc97e1962049577099c1aa8558a8defac0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
