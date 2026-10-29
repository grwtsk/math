# Reference — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22d0b7e4c193eef703d20a323e15934fb9383cf7` · SHA-256 `eb028e52f481af733d91c9cc49235980439d865eed7a110dffdeb75a9ee38717`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std

namespace Think.Kakeya.Gauge

/-!
Reference layer mirror.

The browser runtime treats this file as ideal-reference only. It defines the
analytic center and records the Gamma-normalized measure formulas as named
reference expressions. This local mirror uses `Rat` notation for compileability
without Mathlib; it is not a full real-analysis proof environment.
-/

notation "ℝ" => Rat

def analyticGrey : ℝ := (1 : Rat) / 2

def gammaUnitBallVolumeFormula : String :=
  "Vol(B^n_1) = pi^(n/2) / Gamma(n/2 + 1)"

def gammaUnitSphereAreaFormula : String :=
  "Area(S^(n-1)) = 2*pi^(n/2) / Gamma(n/2)"

def idealSinusoidalPhaseFormula : String :=
  "a_t(x) = 1/2 + A * exp(-lambda*t) * sin(theta_M(x) + phi)"

end Think.Kakeya.Gauge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0adc6de20c8b11eb21a2f44856b0203a9a50c5871b7095228082c8431e07441e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reference/Varianteb028e52f481af733d91c9cc49235980439d865eed7a110dffdeb75a9ee38717.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
