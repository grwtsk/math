# Verification target: Maschke Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8bc1536664f273f582c7bd2edf8baf67b5aa46c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8bc1536664f273f582c7bd2edf8baf67b5aa46c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjugate](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/conjugate.md) | 76 | `declaration-track:4c5ddc9b5eb064bad81ef7bba43038a3c4cb109101fb458a30af13f177f65762` |
| 2 | `theorem` | [conjugate_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/conjugate-apply.md) | 79 | `result-track:cbcf02171f7f8e6ffdf84b0cb0733e48db1a78e02c52b08c878db52bd42029f8` |
| 3 | `theorem` | [conjugate_i](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/conjugate-i.md) | 87 | `result-track:56628880e7e59bc91f33f2c3e4069cc5bd8586b22289f3e2ae5a9ff17acd277b` |
| 4 | `def` | [sumOfConjugates](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/sumofconjugates.md) | 100 | `declaration-track:36eedaa47b75ca17b0824df1f08d0e12c7cb1ab40845eb1d339e6c93a5e1fc42` |
| 5 | `lemma` | [sumOfConjugates_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/sumofconjugates-apply.md) | 103 | `result-track:009a65aeeec9e3455024673a6acc0e594994410e1b4f7b0f8ba284b445ef0505` |
| 6 | `def` | [sumOfConjugatesEquivariant](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/sumofconjugatesequivariant.md) | 108 | `declaration-track:b07def272ba12b934c797eef03bd14231250c9b3a4ec9d42d93b85703878c742` |
| 7 | `theorem` | [sumOfConjugatesEquivariant_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/sumofconjugatesequivariant-apply.md) | 114 | `result-track:8852d81e36bad76e23bea8e9728c6511eb85dfe3600c667e44307e7e55bc37f3` |
| 8 | `def` | [equivariantProjection](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/equivariantprojection.md) | 123 | `declaration-track:e68de1852ff2a9c92d6630791c4e0925f2341020de8af29c478bb3dd6b5f3fd5` |
| 9 | `theorem` | [equivariantProjection_apply](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/equivariantprojection-apply.md) | 126 | `result-track:bf1c42da845cd909e39e052a072c2e03169a9e7fcbad814ac10bd9b6d60f8068` |
| 10 | `theorem` | [equivariantProjection_condition](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/equivariantprojection-condition.md) | 131 | `result-track:72a9292d948a5861c67cbd08f4cbd9603872be4b842a68168a745e83e13e43b7` |
| 11 | `theorem` | [exists_leftInverse_of_injective](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/exists-leftinverse-of-injective.md) | 153 | `result-track:e355c6a2c4468aae1ad79f1b6440900fd1d24766668a86548d85644c58be7159` |
| 12 | `theorem` | [exists_isCompl](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/exists-iscompl.md) | 170 | `result-track:3d69f7d0beb9238fa411bc392c28684b806db45fc67efac871b5cba719e9aaff` |
| 13 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 176 | `declaration-track:ba3ae59eee2e749cd7a2b795add741d616514efa6271f2ae48a18b9cd1b58392` |
| 14 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/instance.md) | 179 | `declaration-track:54edc51e8de88939c080630b372aeafcb5f4944183d84aebda5f41f8c11ded0d` |
| 15 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/MaschkeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 191 | `declaration-track:61ddb7a6008e0cc0fd8bf6121ecc4a3e377802c44e777a5500ff936b4b62feee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=faf509b66f15467a4f9d088145d04e5b8777ae287e6c4cae0f24d48f348bc448 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Maschke/Variantf96fd4bcfa1e59b2aacc09112b837ef770d063a30fde8b846313cf70f18525c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
