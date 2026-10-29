# Verification target: Prod L2 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecf025481612a64304da7f1a9bddaacd7157f4ba",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ProdL2Public.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ProdL2Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecf025481612a64304da7f1a9bddaacd7157f4ba`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean.json)

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
| 1 | `instance` | [instProdInnerProductSpace](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/instprodinnerproductspace.md) | 32 | `declaration-track:c9d43a0b9d186ffe7f64e06b93ca48a0c3a235c4c4ed7876ceac927e09034e5a` |
| 2 | `theorem` | [prod_inner_apply](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/prod-inner-apply.md) | 47 | `result-track:246ef3955f7b743ca579550e71e3396664e739c3d29935d1c92e44d7afa41439` |
| 3 | `def` | [prod](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/prod.md) | 58 | `declaration-track:c5504b4aa72a8fdb54dbf86cd4831e860ea06a61ee8f00de0cf2674d53841a2c` |
| 4 | `theorem` | [prod_apply](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/prod-apply.md) | 72 | `result-track:1fe38204180d8e9b1310ed6d0df9fee90b085e22d721eade2ea4d9883b41eafc` |
| 5 | `def` | [orthogonalDecomposition](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/orthogonaldecomposition.md) | 89 | `declaration-track:41d9d98ef192d6a9e828fb52036fcd92e064b3cb899f1083cae939a53f8d9d5e` |
| 6 | `theorem` | [orthogonalDecomposition_apply](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/orthogonaldecomposition-apply.md) | 98 | `result-track:4a46099b126ab2f821a10732a6535c6d87b6a9e3d91e67e5f363e5354d606df2` |
| 7 | `theorem` | [toLinearEquiv_orthogonalDecomposition](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/tolinearequiv-orthogonaldecomposition.md) | 103 | `result-track:c166a4f7a778f4d04ebe78570eda6856d16c0f0f319a15e678fbb932e011a8e5` |
| 8 | `theorem` | [toLinearEquiv_orthogonalDecomposition_symm](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/tolinearequiv-orthogonaldecomposition-symm.md) | 109 | `result-track:9bbbb02b8f2587e49052ad2bbf62710c9d601e4915cfa96b609fd8d9ebb8d3bc` |
| 9 | `theorem` | [coe_orthogonalDecomposition](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/coe-orthogonaldecomposition.md) | 115 | `result-track:2ab70943b4632b7e04408f5d25cae6672fa9d1595a27408675068d2e844728d3` |
| 10 | `theorem` | [coe_orthogonalDecomposition_symm](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/coe-orthogonaldecomposition-symm.md) | 121 | `result-track:1b7350e2a7558ea00bc4b87a8a84ca75e79aeb70c6177742fb527898371970ce` |
| 11 | `theorem` | [fst_orthogonalDecomposition_apply](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/fst-orthogonaldecomposition-apply.md) | 126 | `result-track:98d9e939710e2d104fb035136e74ddaf43e806df8f0689ee63a38b2565ef417e` |
| 12 | `theorem` | [snd_orthogonalDecomposition_apply](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/snd-orthogonaldecomposition-apply.md) | 130 | `result-track:09bb7b6616b33d9bad539208e175f59a2fc53ca7ac08dcd1bae818380cfc2f46` |
| 13 | `theorem` | [fstL_comp_coe_orthogonalDecomposition](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/fstl-comp-coe-orthogonaldecomposition.md) | 134 | `result-track:dd7e3f82c1dd97518b3fdcc6ccebc84ed7eb54cf9cee006f69286b1245c85f0e` |
| 14 | `theorem` | [sndL_comp_coe_orthogonalDecomposition](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/sndl-comp-coe-orthogonaldecomposition.md) | 138 | `result-track:974efbf8d1a2da840c24e9811180ead60c1e634d9b3f44987a1b546286d11161` |
| 15 | `def` | [quotientEquivOrthogonal](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/quotientequivorthogonal.md) | 144 | `declaration-track:02e9d5d93a89ca20bf8cdc8839a8ada61b993e0db016cf08101d2e464831f542` |
| 16 | `theorem` | [coe_quotientEquivOrthogonal](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/coe-quotientequivorthogonal.md) | 158 | `result-track:32eb793906f05caa0a8bc12f20ccae49aa4c4d57b7079371ce8fe25fbb3a23b7` |
| 17 | `theorem` | [coe_quotientEquivOrthogonal_symm](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/coe-quotientequivorthogonal-symm.md) | 163 | `result-track:fcfeafbc7030148a6530601dde5616cf985575ad4ddb8ccbe3137d89d535d334` |
| 18 | `lemma` | [toLinearEquiv_quotientEquivOrthogonal](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/tolinearequiv-quotientequivorthogonal.md) | 168 | `result-track:b1e228dcc152a361ed4be8dcf97f264539d7e78e8096dc5ed9e97ce7358b7ef1` |
| 19 | `theorem` | [quotientEquivOrthogonal_mk](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/quotientequivorthogonal-mk.md) | 172 | `result-track:2fd2869928c89521b79cc0df7a288e111a3293dd5bfbda7f8f76335a780d5d08` |
| 20 | `theorem` | [quotientEquivOrthogonal_symm_eq_mk](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/quotientequivorthogonal-symm-eq-mk.md) | 176 | `result-track:fa6e4b92935bfb0f1250b1ca6acb17691fc7e111b9491b4d358e44b136229e07` |
| 21 | `instance` | [instQuotientInnerProductSpace](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/instquotientinnerproductspace.md) | 180 | `declaration-track:f03a6802d8817e25c793a28bb4aec539fb1aac008841e0af06ab05137a7948d5` |
| 22 | `theorem` | [inner_quotient_eq](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/inner-quotient-eq.md) | 189 | `result-track:1dbe60155e0285197399cd06fcd07c92edfdab9171bb00423f6618abf0f4aaef` |
| 23 | `theorem` | [Quotient.inner_mk_mk](../../../../FunctionalAnalysis/ProdL2Public.lean/declarations/quotient-inner-mk-mk.md) | 193 | `result-track:adc5e2db5e11cdbe5986d6db28538c390589a621cc4fceadb95002bbc6d15376` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bb81e118efc0221c5943e079b185f1333ed5d45b3dd3871651eef6ee82f2739 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ProdL2/Variantfee81b7dbb5f9bea1b6275027ca25fbf7f9eb12172187a04970edeb0383352b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
