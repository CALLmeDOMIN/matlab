classdef punkt
   properties
      x;
      y;
   end

   methods
      function P = punkt(x, y)
         if nargin == 0
            P.x = 0;
            P.y = 0;
         elseif nargin == 1
            if isa(x, 'punkt')
               P = x;
            else
               P.x = x;
               P.y = 0;
            end
         else
            P.x = x;
            P.y = y;
         end
      end

      function disp(P)
         for i = 1:numel(P)
            fprintf('(%.2f, %.2f)\n', P(i).x, P(i).y);
         end
      end

      function plot(P)
         if isscalar(P)
            plot(P.x, P.y, 'rx', 'MarkerSize', 15, 'LineWidth', 2);
         else
            plot([P.x], [P.y], 'rx', 'MarkerSize', 15, 'LineWidth', 2);
         end
         axis equal;
         grid on;
      end

      function P = plus(P1, P2)
         P = punkt(P1.x + P2.x, P1.y + P2.y);
      end

      function P = colon(P1, step, P2)
         if nargin == 2
            P2 = step;
            step = 1;
         end

         x_vals = P1.x:step:P2.x;
         y_vals = linspace(P1.y, P2.y, length(x_vals));
         P(1:length(x_vals)) = punkt();

         for i = 1:length(x_vals)
            P(i) = punkt(x_vals(i), y_vals(i));
         end
      end
   end
end