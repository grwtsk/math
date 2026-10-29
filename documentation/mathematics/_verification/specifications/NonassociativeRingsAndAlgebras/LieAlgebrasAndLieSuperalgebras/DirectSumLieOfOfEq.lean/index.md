# Verification target: Direct Sum Lie Of Of Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb2d7f15d56154c63034dd733287b6ba4ab5211b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/DirectSum/Varianta1c8d6760a444ca84434a703c8d411b38ad78fbcb240c2b857fa2c887e1660a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb2d7f15d56154c63034dd733287b6ba4ab5211b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/DirectSum/Varianta1c8d6760a444ca84434a703c8d411b38ad78fbcb240c2b857fa2c887e1660a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/DirectSum/Varianta1c8d6760a444ca84434a703c8d411b38ad78fbcb240c2b857fa2c887e1660a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Submodule` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/instance.md) | 48 | `declaration-track:8f7ebdfd9f24590e5d2fb4937b147c0115c00c0bcf2d6faa1f07079f603806cb` |
| 2 | `theorem` | [lie_module_bracket_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/lie-module-bracket-apply.md) | 61 | `result-track:f52693d9d06e5c504802b7b592a0bf173d38e4693a3ea5d1d6793e85d1414115` |
| 3 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:d9a8a447ba60fd8cf34297b9effc33b6ca04d5720bacb5cbdb3ce7c8e7a77d1a` |
| 4 | `def` | [lieModuleOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/liemoduleof.md) | 76 | `declaration-track:6a085b424823702122dd9bb8b468de76846c5fb6783b650e63d2d2e037ee11ad` |
| 5 | `def` | [lieModuleComponent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/liemodulecomponent.md) | 86 | `declaration-track:8164428071d6683b612d8f8583fb0a3fe0b9530fb2141c9f31683db698a68e13` |
| 6 | `instance` | [lieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/liering.md) | 102 | `declaration-track:efc41b5bc893fa14c637f75b59b95fa5b8827e12dacb0e604791be4a81a4ae5f` |
| 7 | `theorem` | [bracket_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/bracket-apply.md) | 121 | `result-track:fe38c087c74e5b8aa2bbddff7cfaa090b9946b461301a18295e58928fbfc5ad2` |
| 8 | `instance` | [lieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/liealgebra.md) | 125 | `declaration-track:158bca18460d57c0193d3111399ca0ecd0c4ab144e72a044632b5ad7b84a06d9` |
| 9 | `def` | [lieAlgebraOf](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/liealgebraof.md) | 136 | `declaration-track:17c0ca90bd4830d5d6d0d774e1035875c0b03283c2a190716860cc52ae215a76` |
| 10 | `def` | [lieAlgebraComponent](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/liealgebracomponent.md) | 148 | `declaration-track:273ec651c3e02f8d80becedf017f1d5991eb8935cc6edbe4df11db99637f2efc` |
| 11 | `theorem` | [lieAlgebra_ext](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/liealgebra-ext.md) | 155 | `result-track:f9ea52044735f0b52e8630b83b43fa05a67a6834aacbc6c9134e3ebe8516fac4` |
| 12 | `theorem` | [lie_of_of_ne](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/lie-of-of-ne.md) | 160 | `result-track:e0d65ff13cc0ba9f2e00ba851fe67197d9f09a86d3d559b94a144b20da592e90` |
| 13 | `theorem` | [lie_of_of_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/lie-of-of-eq.md) | 171 | `result-track:f6756c1b4b0e83972cea3f94b7ba97467bdc8ab8e04ef855c9e6e8f6511d08f2` |
| 14 | `theorem` | [lie_of](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/lie-of.md) | 179 | `result-track:12d75880ac20a49dbfdf35befff5521441aebdcd8fc0fef6c8cda129830e46e3` |
| 15 | `def` | [toLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/toliealgebra.md) | 193 | `declaration-track:a443c78d82dd42cd1862ef1f924fe6f135a577d8c8334966131f49404a453c78` |
| 16 | `instance` | [lieRingOfIdeals](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/lieringofideals.md) | 238 | `declaration-track:d07110549e1461d5e9fbfbba3365c3ede1c5c951fe67cf706b1e080839db53a0` |
| 17 | `instance` | [lieAlgebraOfIdeals](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/DirectSumLieOfOfEq.lean/declarations/liealgebraofideals.md) | 243 | `declaration-track:4a9410a7d30e7efb676cc758f8ce9e40f2d8dc41c27e2d5bfc2c8d71d33afa0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a70dd539d1b303d32d86fdfe973f163b17b548d275585e123537746cddeaded9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/DirectSum/Varianta1c8d6760a444ca84434a703c8d411b38ad78fbcb240c2b857fa2c887e1660a8.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/DirectSum/Varianta1c8d6760a444ca84434a703c8d411b38ad78fbcb240c2b857fa2c887e1660a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
