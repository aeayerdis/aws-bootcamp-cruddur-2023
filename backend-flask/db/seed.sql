
-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Aaron Ayerdis', 'aaronayerdis@outlook.com', 'aaFaa', '0f626954-e8a5-4d3e-9540-9978f6556d12'),
  ('Aaronium', 'aaronayerdis89@gmail.com', 'aeayerdis', '137d9dab-5966-4e41-abc5-668edf77fa12'),
  ('Londo Mollari','lmollari@centari.com' ,'londo' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = handle LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )