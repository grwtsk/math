# Verification target: Derivation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86479cb9a7a556db08f0fdacaa0f3e9db1a56905",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant92db59c0cca19f9c28529fd17474c1f344e67bd83f08b4344e7abe51502b9b08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86479cb9a7a556db08f0fdacaa0f3e9db1a56905`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant92db59c0cca19f9c28529fd17474c1f344e67bd83f08b4344e7abe51502b9b08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Derivation/Variant92db59c0cca19f9c28529fd17474c1f344e67bd83f08b4344e7abe51502b9b08.lean.json)

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
| 1 | `def` | [derivative'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/derivative.md) | 34 | `declaration-track:1b1d3cdeac6445e82af220413a48d22d9878f923e124aa6946c26fc5e1d199e7` |
| 2 | `theorem` | [derivation_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/derivation-c.md) | 44 | `result-track:847713962ed86456b143d87714766c01da7f846b0fcad5386349e1cdb11850dc` |
| 3 | `theorem` | [C_smul_derivation_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/c-smul-derivation-apply.md) | 48 | `result-track:02e6ba8397994ed86e27000302717658b1e4c7a15724f8ef955ab1ac867b362f` |
| 4 | `theorem` | [derivation_ext](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/derivation-ext.md) | 54 | `result-track:111ee1bc320ca611a68cd17b84620cb7cd5389c974c75d9d3b778972beb1ec77` |
| 5 | `def` | [mkDerivation](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/mkderivation.md) | 62 | `declaration-track:a63c042d672241d4ab3019cf2ad187c4414bc7abe2a9c9d638247a394b0ab434` |
| 6 | `lemma` | [mkDerivation_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/mkderivation-apply.md) | 67 | `result-track:42d6f91e2a975ce1deaf73993d47d773f5a1916cb14f30ef60eb5fa8921e0540` |
| 7 | `theorem` | [mkDerivation_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/mkderivation-x.md) | 72 | `result-track:317c06fd6f0299d5abf72fb021fe31eac80d9518dbceb97ec929ed5e3d36a017` |
| 8 | `lemma` | [mkDerivation_one_eq_derivative'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/mkderivation-one-eq-derivative-source-edition-2.md) | 74 | `result-track:98d2e5e3110bc953404c8df42192f9c2918406171f3059fd02307e0c1a42b581` |
| 9 | `lemma` | [mkDerivation_one_eq_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/mkderivation-one-eq-derivative.md) | 78 | `result-track:0f810c503e7b20902cc4d5adcdc246c0e597628acc8a4cedde6671e1e804350d` |
| 10 | `def` | [mkDerivationEquiv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/mkderivationequiv.md) | 83 | `declaration-track:f1f2e5926346be39e229b2e6c541255bf528eb3e2af4beba417611139fa4a66e` |
| 11 | `lemma` | [mkDerivationEquiv_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/mkderivationequiv-apply.md) | 92 | `result-track:22e22c9fe124db9ceabcc04efc5b7bcee110e01846d4903f8e3c8d4b6feb51c8` |
| 12 | `lemma` | [mkDerivationEquiv_symm_apply](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/mkderivationequiv-symm-apply.md) | 96 | `result-track:07791a9ea8fbb8ba209c11a9fe6b32a78e6b90878d44f64cb6cb3caf2b71d7c8` |
| 13 | `def` | [compAEval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/compaeval.md) | 123 | `declaration-track:6a13dba7548598d148f4c177411e88ed7679599a34a51250e7665c60a6dc693f` |
| 14 | `theorem` | [compAEval_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/compaeval-eq.md) | 137 | `result-track:ac0343165782e97dea80cb9d00cbc4e08d961c0da37d9f45b0ce94eed7f64896` |
| 15 | `theorem` | [comp_aeval_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DerivationPublic.lean/declarations/comp-aeval-eq.md) | 148 | `result-track:27338ca3b55b1da0807fe806ae6f14c46784d1694687a1ffb42360325ead89f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8603e9a1164bee87a11f44484d1a952913a71719e160d5f2c2f7745490b726ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Derivation/Variant92db59c0cca19f9c28529fd17474c1f344e67bd83f08b4344e7abe51502b9b08.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Derivation/Variant92db59c0cca19f9c28529fd17474c1f344e67bd83f08b4344e7abe51502b9b08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
