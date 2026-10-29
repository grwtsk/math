# Prime Number Theorem And Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b724d24578a7ebd378d4b46e82140b76987f40b` · SHA-256 `f9465d45ae6244baf34ff95299b88661c71235e94483d5e6efd43aea05c108e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

import PrimeNumberTheoremAnd.Auxiliary
import PrimeNumberTheoremAnd.BorelCaratheodory
import PrimeNumberTheoremAnd.BrunTitchmarsh
import PrimeNumberTheoremAnd.Consequences
import PrimeNumberTheoremAnd.Defs
import PrimeNumberTheoremAnd.DerivativeBound
import PrimeNumberTheoremAnd.EulerMascheroniBounds
import PrimeNumberTheoremAnd.Fourier
import PrimeNumberTheoremAnd.GeneralMeromorphic
import PrimeNumberTheoremAnd.HadamardFactorization
import PrimeNumberTheoremAnd.HoffsteinLockhart
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_a2_bounds
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_app
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_app_tables
import PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW_tables
import PrimeNumberTheoremAnd.IEANTN.Buthe
import PrimeNumberTheoremAnd.IEANTN.CH2.CH2
import PrimeNumberTheoremAnd.IEANTN.CH2.CH2_part1
import PrimeNumberTheoremAnd.IEANTN.Chebyshev
import PrimeNumberTheoremAnd.IEANTN.CostaPereira
import PrimeNumberTheoremAnd.IEANTN.Dusart
import PrimeNumberTheoremAnd.IEANTN.Erdos392
import PrimeNumberTheoremAnd.IEANTN.eSHP.eSHP
import PrimeNumberTheoremAnd.IEANTN.eSHP.eSHP_tables
import PrimeNumberTheoremAnd.IEANTN.FioriKadiriSwidinsky.FioriKadiriSwidinsky
import PrimeNumberTheoremAnd.IEANTN.FKS2
import PrimeNumberTheoremAnd.IEANTN.Goldbach
import PrimeNumberTheoremAnd.IEANTN.Kadiri
import PrimeNumberTheoremAnd.IEANTN.KLN
import PrimeNumberTheoremAnd.IEANTN.Lcm
import PrimeNumberTheoremAnd.IEANTN.Li2Bounds
import PrimeNumberTheoremAnd.IEANTN.Mertens
import PrimeNumberTheoremAnd.IEANTN.MobiusLemma
import PrimeNumberTheoremAnd.IEANTN.PrimaryDefinitions
import PrimeNumberTheoremAnd.IEANTN.PrimarySummary
import PrimeNumberTheoremAnd.IEANTN.PrimeInInterval
import PrimeNumberTheoremAnd.IEANTN.Ramanujan.Ramanujan
import PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime
import PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime_tables
import PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldZeta
import PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions
import PrimeNumberTheoremAnd.IEANTN.SecondarySummary
import PrimeNumberTheoremAnd.IEANTN.TMEEMT
import PrimeNumberTheoremAnd.IEANTN.ZetaAppendix
import PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions
import PrimeNumberTheoremAnd.IEANTN.ZetaSummary
import PrimeNumberTheoremAnd.IwaniecKowalskiCh1
import PrimeNumberTheoremAnd.Mathlib.Algebra.Notation.Support
import PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Asymptotics
import PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Uniformly
import PrimeNumberTheoremAnd.Mathlib.Analysis.SpecialFunctions.Log.Basic
import PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.AuxResults
import PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Basic
import PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.Selberg
import PrimeNumberTheoremAnd.Mathlib.NumberTheory.Sieve.SelbergBounds
import PrimeNumberTheoremAnd.MediumPNT
import PrimeNumberTheoremAnd.MellinCalculus
import PrimeNumberTheoremAnd.PerronFormula
import PrimeNumberTheoremAnd.Rectangle
import PrimeNumberTheoremAnd.ResidueCalcOnRectangles
import PrimeNumberTheoremAnd.SmoothExistence
import PrimeNumberTheoremAnd.Sobolev
import PrimeNumberTheoremAnd.StrongPNT
import PrimeNumberTheoremAnd.Tactic.AdditiveCombination
import PrimeNumberTheoremAnd.Wiener
import PrimeNumberTheoremAnd.ZetaBounds
import PrimeNumberTheoremAnd.ZetaConj
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=509e4471eab135fd699745d6faa1d94db56cc05deb4e4f3e686155916000d98f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PrimeNumberTheoremAnd/Variantf9465d45ae6244baf34ff95299b88661c71235e94483d5e6efd43aea05c108e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
