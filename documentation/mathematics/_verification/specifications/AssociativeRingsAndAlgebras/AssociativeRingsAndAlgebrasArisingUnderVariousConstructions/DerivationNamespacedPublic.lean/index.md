# Verification target: Derivation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bebd31b6498dea7c93f975c777a15db68da703d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variantedad13533fb24abc6e6c722359715a9c3a1286bc24a1ca4ec80a1f2b12102d3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bebd31b6498dea7c93f975c777a15db68da703d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variantedad13533fb24abc6e6c722359715a9c3a1286bc24a1ca4ec80a1f2b12102d3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Derivation/Variantedad13533fb24abc6e6c722359715a9c3a1286bc24a1ca4ec80a1f2b12102d3c.lean.json)

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
| 1 | `def` | [derivative'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/derivative.md) | 42 | `declaration-track:258743b91efccb3da845e94e39ad947b3937875b639a3bebf9083407c5b92a4e` |
| 2 | `theorem` | [derivation_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/derivation-c.md) | 52 | `result-track:992181d595681d107884ed3a1e965205f11f3978a0fa137bbb134002d86e2114` |
| 3 | `theorem` | [C_smul_derivation_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/c-smul-derivation-apply.md) | 56 | `result-track:c565479420d4b35e978c4b43bbe6de5dc6343694f6b6d6e5a5409f4783cae4a6` |
| 4 | `theorem` | [derivation_ext](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/derivation-ext.md) | 62 | `result-track:21f9371dc73b14ecea6c5957212d96937debeabbf88e5b2ae8f8ff386f782551` |
| 5 | `def` | [mkDerivation](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/mkderivation.md) | 70 | `declaration-track:ffe85f2c436a217f29f5f19a68d0b9934ebd9eaabda4060164d544f02395ea64` |
| 6 | `lemma` | [mkDerivation_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/mkderivation-apply.md) | 75 | `result-track:1aa94c5763d4b7af3f00a556db2dcdabda2320d7bdfc4c9e5a8a6b1a70a0ab46` |
| 7 | `theorem` | [mkDerivation_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/mkderivation-x.md) | 80 | `result-track:c4164e20d29e89b64e51bf8a4515311e0a0673d054cb1c5bab62d4885db35456` |
| 8 | `lemma` | [mkDerivation_one_eq_derivative'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/mkderivation-one-eq-derivative.md) | 82 | `result-track:704c885e2cefc304fde81be3b8d7cf07f0cfc9a5fb30d8f191a671030ea453af` |
| 9 | `lemma` | [mkDerivation_one_eq_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/mkderivation-one-eq-derivative-source-edition-2.md) | 86 | `result-track:b0ba2ef267c2286be51fedf319e7aace56e9b55bfbb1c5fb7656f626e05baf5e` |
| 10 | `def` | [mkDerivationEquiv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/mkderivationequiv.md) | 91 | `declaration-track:56d1f394e5528d83d7479bad95dc0450a8cdf739ad406e1123c61bd6513b6e2d` |
| 11 | `lemma` | [mkDerivationEquiv_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/mkderivationequiv-apply.md) | 100 | `result-track:fd36f822eddab6db60a3fde4bc78c7dec4295c74ebeb5f970e7562f2446d98f5` |
| 12 | `lemma` | [mkDerivationEquiv_symm_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/mkderivationequiv-symm-apply.md) | 104 | `result-track:6a203e9163daaa7421aed2afc4d17cf6aa4b0b3a84d9c4a86c57a40854df9c08` |
| 13 | `def` | [compAEval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/compaeval.md) | 131 | `declaration-track:f760fcf04cec29b69c4a51484b072d1857c1d2bd32f954af869145d698101b1b` |
| 14 | `theorem` | [compAEval_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/compaeval-eq.md) | 145 | `result-track:15909bd40af94791aa2201e7ae1d83d9ee82a4586e599516ff80aad54d2c1900` |
| 15 | `theorem` | [comp_aeval_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationNamespacedPublic.lean/declarations/comp-aeval-eq.md) | 156 | `result-track:08d9a6d846f35b8a969553fbd14ac35f98f6b4265c05371899c318848e3d4697` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8bc2a9b8d62acfa06cbcbd5e22872be112ecefe1e7ca205c9b1cf869de9f373 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variantedad13533fb24abc6e6c722359715a9c3a1286bc24a1ca4ec80a1f2b12102d3c.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Derivation/Variantedad13533fb24abc6e6c722359715a9c3a1286bc24a1ca4ec80a1f2b12102d3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
