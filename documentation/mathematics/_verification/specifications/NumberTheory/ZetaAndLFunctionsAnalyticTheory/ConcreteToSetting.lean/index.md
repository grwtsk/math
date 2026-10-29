# Verification target: Concrete To Setting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a3642f991c3ec1a1c56344e77fd7e7689e5dc4b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant5e10180dd43ce19821d3522f9090478566c8369d0b54cb5f9804957d95b3565e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a3642f991c3ec1a1c56344e77fd7e7689e5dc4b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant5e10180dd43ce19821d3522f9090478566c8369d0b54cb5f9804957d95b3565e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant5e10180dd43ce19821d3522f9090478566c8369d0b54cb5f9804957d95b3565e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.PrimeSideA.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideTemp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSetting](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting.md) | 36 | `declaration-track:d79ea1ac9fc349e070ff8217b77b5933a47f4c22e6ffbf20cd42c44368371a76` |
| 2 | `def` | [localFun](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/localfun.md) | 40 | `declaration-track:78816507e082664795e7356a8b258a52a416f7d267581edb84099376b2495a32` |
| 3 | `lemma` | [toSetting_T](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-t.md) | 42 | `result-track:284fae96afa9474c459f776005fbc82a6ec7cc458179acc1ff746097e0067a9d` |
| 4 | `lemma` | [toSetting_lam](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-lam.md) | 43 | `result-track:23c22eae8a20b37e0ea318878b74effdba613244400f7176ca6814df94ccc551` |
| 5 | `lemma` | [toSetting_w](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-w.md) | 44 | `result-track:67cbc61111651b94123fa481f71f03e38957069f6d65b989982d1e02e9f9c881` |
| 6 | `lemma` | [toSetting_L](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-l-source-edition-2.md) | 45 | `result-track:f72001cf3ac0fffb993fbe6bb392021c76668a37f4158511f660110f02542cb9` |
| 7 | `lemma` | [toSetting_X](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-x.md) | 46 | `result-track:bcd041aee0a41f542302f10ec306023c4188b25215279be105953a13611c6ca6` |
| 8 | `lemma` | [toSetting_l](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-l.md) | 47 | `result-track:5cada8f584fae1a0e8fb5955029583a9550cd96fcbbf8bb0e5de2c073146134e` |
| 9 | `lemma` | [toSetting_ell1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-ell1.md) | 48 | `result-track:b5a77a8cd435d92089b06ac9c936900409ddfa29847a51d88bf80fb98e33247d` |
| 10 | `lemma` | [toSetting_d](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-d.md) | 49 | `result-track:0f1b32081f80d8fd0602d58e8c73c413233fbad3956262785ffccbfb13f678dd` |
| 11 | `lemma` | [toSetting_tau](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/tosetting-tau.md) | 50 | `result-track:98d38be0cfbff895d12f870e09e7842f84402637f5bdb78183acf1733aadc0e0` |
| 12 | `lemma` | [localFun_a](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/localfun-a.md) | 51 | `result-track:feceff7117b015c74af82c149a8c38336896866060670c73bfd6ddd38157ab1b` |
| 13 | `lemma` | [localFun_b](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/localfun-b.md) | 52 | `result-track:cbe047bcdaed3943946246f7bce9c2282f7c265aecc1aef1ec72d38f9ac67c8f` |
| 14 | `lemma` | [localFun_Phi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/localfun-phi.md) | 53 | `result-track:aa7f17cfeaf06eb50e7ae68b38aaf09d1dc4c3d9545be2df49ed500927ff529a` |
| 15 | `lemma` | [localFun_g](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/localfun-g.md) | 54 | `result-track:9c95a63631e5783936ef9282a54ce1e138a1ba3dbda283b1156b685629d04ccb` |
| 16 | `lemma` | [localFun_phiHat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/localfun-phihat.md) | 55 | `result-track:4ca592d6dc7aa8e095bdcac902465e1ac61a731435fd061742c13514e3ed23e7` |
| 17 | `lemma` | [GentryA_concrete](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/gentrya-concrete.md) | 64 | `result-track:88fa85a2de96d2c393e617bfc7623a06330fb2082051a282f6c648742e020509` |
| 18 | `lemma` | [trGtA_concrete](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/trgta-concrete.md) | 67 | `result-track:d4af32aaa27f370376ae25c8f8c54ec51c53968d681796348d42849b6931cb8b` |
| 19 | `lemma` | [trGt2A_concrete](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/trgt2a-concrete.md) | 70 | `result-track:5838996e64e46d0ed043cb207197e646778ae82b6c57b3170f6415c9cc71cdda` |
| 20 | `def` | [LocalHypsEventually](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/localhypseventually.md) | 74 | `declaration-track:560265b35601463b52e8d868e20c710f31f58e06de866b00570f840171a5bac1` |
| 21 | `lemma` | [evBound_of_eventuallyAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteToSetting.lean/declarations/evbound-of-eventuallyat.md) | 82 | `result-track:678f498299b77a4bc189dc1b367745283b87744aeb473e8b3c08d8ec3637ae66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afa9b768aff3595d59ffa5ee2ea1a1661f9f0fb91d54bceee45e0a36f798fbdc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant5e10180dd43ce19821d3522f9090478566c8369d0b54cb5f9804957d95b3565e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant5e10180dd43ce19821d3522f9090478566c8369d0b54cb5f9804957d95b3565e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
